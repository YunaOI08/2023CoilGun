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

# Utility rule file for clean_test_results_roslib.

# Include the progress variables for this target.
include ros/roslib/CMakeFiles/clean_test_results_roslib.dir/progress.make

ros/roslib/CMakeFiles/clean_test_results_roslib:
	cd /home/pi/catkin_ws/build/ros/roslib && /usr/bin/python3 /home/pi/catkin_ws/src/catkin/cmake/test/remove_test_results.py /home/pi/catkin_ws/build/test_results/roslib

clean_test_results_roslib: ros/roslib/CMakeFiles/clean_test_results_roslib
clean_test_results_roslib: ros/roslib/CMakeFiles/clean_test_results_roslib.dir/build.make

.PHONY : clean_test_results_roslib

# Rule to build all files generated by this target.
ros/roslib/CMakeFiles/clean_test_results_roslib.dir/build: clean_test_results_roslib

.PHONY : ros/roslib/CMakeFiles/clean_test_results_roslib.dir/build

ros/roslib/CMakeFiles/clean_test_results_roslib.dir/clean:
	cd /home/pi/catkin_ws/build/ros/roslib && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_roslib.dir/cmake_clean.cmake
.PHONY : ros/roslib/CMakeFiles/clean_test_results_roslib.dir/clean

ros/roslib/CMakeFiles/clean_test_results_roslib.dir/depend:
	cd /home/pi/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/catkin_ws/src /home/pi/catkin_ws/src/ros/roslib /home/pi/catkin_ws/build /home/pi/catkin_ws/build/ros/roslib /home/pi/catkin_ws/build/ros/roslib/CMakeFiles/clean_test_results_roslib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ros/roslib/CMakeFiles/clean_test_results_roslib.dir/depend

