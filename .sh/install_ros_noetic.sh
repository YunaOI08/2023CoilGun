# Debian buster 환경에 ros noetic 설치
# 라즈베리파이 메모리가 부족해 rviz는 불가능

# 1. Set up ROS Noetic repo
# Run this echo command to add the official ROS Noetic repo to source list:
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu buster main" > /etc/apt/sources.list.d/ros-noetic.list'

# 2. Add official ROS key
# To make sure we will install authenticated ROS packages to compile Noetic on your Raspberry Pi 4
# and avoid hackers to intercept your network traffic, run
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# 3. Install build dependencies to compile ROS Noetic packages on Raspberry Pi 4
# Run the following 2 commands:
sudo apt update
sudo apt-get install -y python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential cmake

# 4. Download ROS Noetic dependency sources/repos
sudo rosdep init && rosdep update
mkdir ~/ros_catkin_ws && cd ~/ros_catkin_ws
rosinstall_generator ros_comm --rosdistro noetic --deps --wet-only --tar > noetic-ros_comm-wet.rosinstall
wstool init src noetic-ros_comm-wet.rosinstall
rosdep install -y --from-paths src --ignore-src --rosdistro noetic -r --os=debian:buster

# 5. Compiling Noetic packages on Raspberry Pi 4
# Run the following command, which will take a while:
sudo src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release --install-space /opt/ros/noetic -j1 -DPYTHON_EXECUTABLE=/usr/bin/python3
