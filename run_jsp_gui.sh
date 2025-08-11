#!/usr/bin/env bash
set -e
source /opt/ros/humble/setup.bash
source ~/ros2_ws/install/local_setup.bash
# Launch Joint State Publisher GUI (sliders to control joints)
ros2 run joint_state_publisher_gui joint_state_publisher_gui
