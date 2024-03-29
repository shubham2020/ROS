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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/shubham/ROS/hwros_ws/src/universal_robot/ur_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/shubham/ROS/hwros_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/shubham/ROS/hwros_ws/install/lib/python2.7/dist-packages:/home/shubham/ROS/hwros_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/shubham/ROS/hwros_ws/build" \
    "/usr/bin/python2" \
    "/home/shubham/ROS/hwros_ws/src/universal_robot/ur_driver/setup.py" \
    build --build-base "/home/shubham/ROS/hwros_ws/build/universal_robot/ur_driver" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/shubham/ROS/hwros_ws/install" --install-scripts="/home/shubham/ROS/hwros_ws/install/bin"
