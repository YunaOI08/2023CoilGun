# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/catkin_ws/build

# Include any dependencies generated for this target.
include pluginlib/CMakeFiles/test_plugins.dir/depend.make

# Include the progress variables for this target.
include pluginlib/CMakeFiles/test_plugins.dir/progress.make

# Include the compile flags for this target's objects.
include pluginlib/CMakeFiles/test_plugins.dir/flags.make

pluginlib/CMakeFiles/test_plugins.dir/test/test_plugins.cpp.o: pluginlib/CMakeFiles/test_plugins.dir/flags.make
pluginlib/CMakeFiles/test_plugins.dir/test/test_plugins.cpp.o: /home/pi/catkin_ws/src/pluginlib/test/test_plugins.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object pluginlib/CMakeFiles/test_plugins.dir/test/test_plugins.cpp.o"
	cd /home/pi/catkin_ws/build/pluginlib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_plugins.dir/test/test_plugins.cpp.o -c /home/pi/catkin_ws/src/pluginlib/test/test_plugins.cpp

pluginlib/CMakeFiles/test_plugins.dir/test/test_plugins.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_plugins.dir/test/test_plugins.cpp.i"
	cd /home/pi/catkin_ws/build/pluginlib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/catkin_ws/src/pluginlib/test/test_plugins.cpp > CMakeFiles/test_plugins.dir/test/test_plugins.cpp.i

pluginlib/CMakeFiles/test_plugins.dir/test/test_plugins.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_plugins.dir/test/test_plugins.cpp.s"
	cd /home/pi/catkin_ws/build/pluginlib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/catkin_ws/src/pluginlib/test/test_plugins.cpp -o CMakeFiles/test_plugins.dir/test/test_plugins.cpp.s

# Object files for target test_plugins
test_plugins_OBJECTS = \
"CMakeFiles/test_plugins.dir/test/test_plugins.cpp.o"

# External object files for target test_plugins
test_plugins_EXTERNAL_OBJECTS =

/home/pi/catkin_ws/devel/lib/libtest_plugins.so: pluginlib/CMakeFiles/test_plugins.dir/test/test_plugins.cpp.o
/home/pi/catkin_ws/devel/lib/libtest_plugins.so: pluginlib/CMakeFiles/test_plugins.dir/build.make
/home/pi/catkin_ws/devel/lib/libtest_plugins.so: /home/pi/catkin_ws/devel/lib/libclass_loader.so
/home/pi/catkin_ws/devel/lib/libtest_plugins.so: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/pi/catkin_ws/devel/lib/libtest_plugins.so: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/pi/catkin_ws/devel/lib/libtest_plugins.so: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/pi/catkin_ws/devel/lib/libtest_plugins.so: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/pi/catkin_ws/devel/lib/libtest_plugins.so: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/pi/catkin_ws/devel/lib/libtest_plugins.so: /usr/lib/libPocoFoundation.so
/home/pi/catkin_ws/devel/lib/libtest_plugins.so: /usr/lib/arm-linux-gnueabihf/libdl.so
/home/pi/catkin_ws/devel/lib/libtest_plugins.so: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/pi/catkin_ws/devel/lib/libtest_plugins.so: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/pi/catkin_ws/devel/lib/libtest_plugins.so: pluginlib/CMakeFiles/test_plugins.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/pi/catkin_ws/devel/lib/libtest_plugins.so"
	cd /home/pi/catkin_ws/build/pluginlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_plugins.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pluginlib/CMakeFiles/test_plugins.dir/build: /home/pi/catkin_ws/devel/lib/libtest_plugins.so

.PHONY : pluginlib/CMakeFiles/test_plugins.dir/build

pluginlib/CMakeFiles/test_plugins.dir/clean:
	cd /home/pi/catkin_ws/build/pluginlib && $(CMAKE_COMMAND) -P CMakeFiles/test_plugins.dir/cmake_clean.cmake
.PHONY : pluginlib/CMakeFiles/test_plugins.dir/clean

pluginlib/CMakeFiles/test_plugins.dir/depend:
	cd /home/pi/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/catkin_ws/src /home/pi/catkin_ws/src/pluginlib /home/pi/catkin_ws/build /home/pi/catkin_ws/build/pluginlib /home/pi/catkin_ws/build/pluginlib/CMakeFiles/test_plugins.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pluginlib/CMakeFiles/test_plugins.dir/depend
