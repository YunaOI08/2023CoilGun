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
