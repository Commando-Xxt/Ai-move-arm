#!/usr/bin/env bash
set -e

# Install ROS2 Humble + MoveIt + common tools
sudo apt update
sudo apt install -y ros-humble-desktop ros-humble-moveit python3-colcon-common-extensions git

# Create workspace and clone the robot arm package
mkdir -p ~/ros2_ws/src
cd ~/ros2_ws/src

# Clone only if not already present
if [ ! -d "Robot_Arm_ROS2" ]; then
  git clone https://github.com/smart-methods/Robot_Arm_ROS2.git
fi

# Build the workspace
cd ~/ros2_ws
rosdep update || true
rosdep install --from-paths src --ignore-src -r -y || true
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release

# Source setup scripts in .bashrc for future sessions
grep -qxF 'source /opt/ros/humble/setup.bash' ~/.bashrc || echo 'source /opt/ros/humble/setup.bash' >> ~/.bashrc
grep -qxF 'source ~/ros2_ws/install/local_setup.bash' ~/.bashrc || echo 'source ~/ros2_ws/install/local_setup.bash' >> ~/.bashrc
