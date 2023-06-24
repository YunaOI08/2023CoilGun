# 2023CoilGun
4학년 1학기 종합설계및운용 강의를 위한 ros 패키지 입니다.

![coilgun_detectFire](https://github.com/YunaOI08/2023CoilGun/assets/87895999/4bf5839d-26ff-44c5-8d87-48a0e1df1fe7)

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
`.sh/install_ros_noetic.sh` 참고


## 부가적인 패키지 설치
`.sh/install_ros_packages.sh` 참고

예시: 
```bash
rosinstall_generator common_msgs sensor_msgs --rosdistro noetic --deps -wet-only --tar > noetic-common_msgs-wet.rosinstall
# 각 패키지 설치 후 Merge & Update 과정 필수
wstool merge -t src noetic-common_msgs-wet.rosinstall
wstool update -t src
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
