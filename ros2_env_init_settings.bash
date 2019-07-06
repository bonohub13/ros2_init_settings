#!/bin/bash -e
sudo apt install ros-$CHOOSE_ROS_DISTRO-desktop -y

sudo apt install -y python3 \
                    python3-argcomplete

source /opt/ros/$CHOOSE_ROS_DISTRO/setup.bash
echo "" >> ~/.bashrc
echo "# ----- ros2 -----" >> ~/.bashrc
echo "source /opt/ros/crystal/setup.bash" >> ~/.bashrc

sudo apt update

sudo apt install -y ros-$CHOOSE_ROS_DISTRO-rmw-openslice-cpp \
                    ros-$CHOOSE_ROS_DISTRO-rmw-connext-cpp

sudo apt install python3-colcon-common-extensions -y