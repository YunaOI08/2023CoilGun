# CMake generated Testfile for 
# Source directory: /home/pi/catkin_ws/src/ros/rosclean
# Build directory: /home/pi/catkin_ws/build/ros/rosclean
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rosclean_nosetests_test "/home/pi/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/home/pi/catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/pi/catkin_ws/build/test_results/rosclean/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/pi/catkin_ws/build/test_results/rosclean" "/usr/bin/nosetests3 -P --process-timeout=60 --where=/home/pi/catkin_ws/src/ros/rosclean/test --with-xunit --xunit-file=/home/pi/catkin_ws/build/test_results/rosclean/nosetests-test.xml")
set_tests_properties(_ctest_rosclean_nosetests_test PROPERTIES  _BACKTRACE_TRIPLES "/home/pi/catkin_ws/src/catkin/cmake/test/tests.cmake;160;add_test;/home/pi/catkin_ws/src/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/pi/catkin_ws/src/ros/rosclean/CMakeLists.txt;9;catkin_add_nosetests;/home/pi/catkin_ws/src/ros/rosclean/CMakeLists.txt;0;")
