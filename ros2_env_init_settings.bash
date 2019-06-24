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
