#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/pi/catkin_ws/src/ros_comm/rosmaster"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/pi/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/pi/catkin_ws/install/lib/python3/dist-packages:/home/pi/catkin_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pi/catkin_ws/build" \
    "/usr/bin/python3" \
    "/home/pi/catkin_ws/src/ros_comm/rosmaster/setup.py" \
    egg_info --egg-base /home/pi/catkin_ws/build/ros_comm/rosmaster \
    build --build-base "/home/pi/catkin_ws/build/ros_comm/rosmaster" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/pi/catkin_ws/install" --install-scripts="/home/pi/catkin_ws/install/bin"
