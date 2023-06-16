# CMake generated Testfile for 
# Source directory: /home/pi/catkin_ws/src/ros_comm/roslaunch
# Build directory: /home/pi/catkin_ws/build/ros_comm/roslaunch
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_roslaunch_nosetests_test.unit "/home/pi/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/home/pi/catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/pi/catkin_ws/build/test_results/roslaunch/nosetests-test.unit.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/pi/catkin_ws/build/test_results/roslaunch" "/usr/bin/nosetests3 -P --process-timeout=60 --where=/home/pi/catkin_ws/src/ros_comm/roslaunch/test/unit --with-xunit --xunit-file=/home/pi/catkin_ws/build/test_results/roslaunch/nosetests-test.unit.xml")
set_tests_properties(_ctest_roslaunch_nosetests_test.unit PROPERTIES  _BACKTRACE_TRIPLES "/home/pi/catkin_ws/src/catkin/cmake/test/tests.cmake;160;add_test;/home/pi/catkin_ws/src/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/pi/catkin_ws/src/ros_comm/roslaunch/CMakeLists.txt;26;catkin_add_nosetests;/home/pi/catkin_ws/src/ros_comm/roslaunch/CMakeLists.txt;0;")
