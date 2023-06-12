cmake_minimum_required(VERSION 3.0.2)
project(lepton3)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
find_package(Qt4 COMPONENTS REQUIRED
  QtCore
  QtGui
  QtWidgets
)
include(${QT_USE_FILE})

QT4_ADD_RESOURCES(QT_RESOURCES_CPP ${QT_RESOURCES})

add_definitions(-std=c++11 -fPIC)
#set(QT_SOURCES
#  src/main.cpp
#  src/LeptonThread.h
#  src/LeptonThread.cpp
#)
set(qt_include_dirs
  ${Qt4Core_INCLUDE_DIRS}
  ${Qt4Gui_INCLUDE_DIRS}
  ${Qt4Widgets_INCLUDE_DIRS}
)
set(QT4_LIBRARIES
  Qt4::QtCore
  Qt4::QtGui
  Qt4::QtWidgets
)

catkin_package(
  INCLUDE_DIRS
  include
  ${qt_include_dirs}
  LIBRARIES
  ${PROJECT_NAME}
  CATKIN_DEPENDS lepton_msg_pkg roscpp rospy std_msgs ${MSG_DPES}
#  DEPENDS system_lib
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${qt_include_dirs}
)

#add_library(${PROJECT_NAME}
#  src/main.cpp
#)

# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
#add_dependencies(lepton_msg_pkg ${catkin_EXPORTED_TARGETS})

add_executable(${PROJECT_NAME} src/main.cpp)
#add_executable(${PROJECT_NAME} ${QT_SOURCES} ${QT_RESOURCES_CPP} ${QT_FORMS_HPP} ${QT_MOC_HPP})


## Specify libraries to link a library or executable target against
target_link_libraries(${PROJECT_NAME}
  ${catkin_LIBRARIES}
  ${QT_LIBRARIES}
  ${QT4_LIBRARIES}
)


install(TARGETS ${PROJECT_NAME}
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
install(DIRECTORY include/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)

