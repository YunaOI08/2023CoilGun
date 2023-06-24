# 2023CoilGun
4학년 1학기 종합설계및운용 강의를 위한 ros 패키지 입니다.

![ezgif-5-f3ae6afd67](https://github.com/YunaOI08/2023CoilGun/assets/87895999/beca67d4-f2e9-4820-b110-9f0e60e2035d)

![coilgun_shoot](https://github.com/YunaOI08/2023CoilGun/assets/87895999/9a7e573f-fd13-4b9e-86a2-7f870c0b033a)


version
> os: debian buster
> 
> ros: noetic
> 
> python: 3.7
> 
> opencv: 4.7.0
>

## Debian buster 환경에 ros noetic 설치

```bash
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
```

(라즈베리파이 메모리가 부족해 rviz는 불가능)

## 부가적인 패키지 설치

`cd ros_catkin_ws/`에서 작업

1. ros_comm
```bash
# 튜토리얼 설치
rosinstall_generator ros_comm ros_tutorials --rosdistro noetic --deps --wet-only --exclude roslisp --tar >> noetic-ros_comm-wet.rosinstall
# 시리얼통신
rosinstall_generator ros_comm rosserial --rosdistro noetic --deps --wet-only --exclude roslisp --tar >> noetic-ros_comm-wet.rosinstall
# 시리얼통신 - 아두이노
rosinstall_generator ros_comm rosserial_arduino --rosdistro noetic --deps --wet-only --exclude roslisp --tar >> noetic-ros_comm-wet.rosinstall
```

2. common_msgs
```bash
# sensor_msgs
rosinstall_generator common_msgs sensor_msgs --rosdistro noetic --deps -wet-only --tar > noetic-common_msgs-wet.rosinstall
# nav_msgs
rosinstall_generator common_msgs nav_msgs --rosdistro noetic --deps -wet-only --tar > noetic-common_msgs-wet.rosinstall
```

3. vision_opencv
```bash
# cv_bridge
rosinstall_generator vision_opencv cv_bridge --rosdistro noetic --deps -wet-only --tar > noetic-vision_opencv-wet.rosinstall
```

4. image_common
```bash
# camera_calibration_parsers
rosinstall_generator image_common camera_calibration_parsers --rosdistro noetic --deps -wet-only --tar > noetic-image_common-wet.rosinstall
# image_transport
rosinstall_generator image_common image_transport --rosdistro noetic --deps -wet-only --tar > noetic-image_common-wet.rosinstall
# image_view
rosinstall_generator image_common image_view --rosdistro noetic --deps -wet-only --tar > noetic-image_common-wet.rosinstall
```

5. dynamic_reconfigure
```bash
rosinstall_generator dynamic_reconfigure --rosdistro noetic --deps -wet-only --tar > noetic-dynamic_reconfigure-wet.rosinstall
```

6. nodelet_core
```bash
rosinstall_generator nodelet_core nodelet --rosdistro noetic --deps -wet-only --tar > noetic-nodelet_core-wet.rosinstall
```
7. roslint
```bash
rosinstall_generator roslint --rosdistro noetic --deps -wet-only --tar > noetic-roslint-wet.rosinstall
```

각 패키지 설치 후 Merge & Update 과정 필수
```bash
wstool merge -t src noetic-{}-wet.rosinstall
wstool update -t src
```

## Lepton3 사용을 위한 환경설정 및 qt4 설치
1. First enable the SPI and I2C interfaces on the Pi.
```bash
sudo raspi-config
```

2. Install the 'qt4-dev-tools' package, which allows compiling of QT applications.
```bash
sudo apt-get install qt4-dev-tools
```

## 실행 방법
```bash
cd ~/2023CoilGun && catkin_make
```
Serial connection with arduino
```bash
# upload arduino: use ServoControl.cpp.ino
roscore
rosrun rosserial_python serial_node.py _port:=/dev/ttyACM0 _baud:=57600

# example to publish servo msgs
rostopic pub /servo1 std_msgs/UInt16 90 --once
rostopic pub /servo2 std_msgs/UInt16 90 --once
```
SPI connection for publish msg of lepton
```bash
roslaunch flir_lepton captureAndView.launch
```
Subscribe all msg and publish msg for survo control
```
rosrun mux mux.py
```

## Reference
[1] [How to Install ROS Noetic on Raspberry Pi 4 - VarHowto](https://varhowto.com/install-ros-noetic-raspberry-pi-4/)

[2] https://github.com/groupgets/LeptonModule/tree/master/software/raspberrypi_video

[3] https://jainn.tistory.com/12

[4] https://velog.io/@dbdb_dev/ROS-%EC%95%84%EB%91%90%EC%9D%B4%EB%85%B8-%EC%84%A4%EC%B9%98
