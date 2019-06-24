#!/bin/bash -e

sudo apt install python3-argcomplete -y
sudo apt install python3-pip -y
sudo pip3 install argcomplete
source /opt/ros/$CHOOSE_ROS_DISTRO/setup.bash
sudo apt update
sudo apt install ros-$CHOOSE_ROS_DISTRO-rmw-opensplice-cpp -y # for OpenSplice
sudo apt install ros-$CHOOSE_ROS_DISTRO-rmw-connext-cpp -y # for RTI Connext (requires license agreement)
sudo apt update
sudo apt install ros-$CHOOSE_ROS_DISTRO-turtlebot2-* -y

# add ROS_SETTINGS to your .bashrc
echo 'Do you want to switch over ros and ros2? [y/n]'
read choice
if [ $choice = 'y' ] || [ $choice = 'Y' ]; then
  echo "##### ROS | ROS2 settings ##########" >> .bashrc
  echo "alias mode=\". ~/ros_settings.sh\"" >> .bashrc
  mv ./ros_settings.sh ~
  echo "####################################" >> .bashrc
fi
