#!/usr/bin/env bash
set -e
source /opt/ros/humble/setup.bash
source ~/ros2_ws/install/local_setup.bash
# Launch MoveIt demo (motion planning in RViz)
ros2 launch arduinobot_mc demo.launch.py
