#!/usr/bin/env bash
set -e
source /opt/ros/humble/setup.bash
source ~/ros2_ws/install/local_setup.bash
# Launch RViz with the robot arm model
ros2 launch arduinobot_description display.launch.xml
