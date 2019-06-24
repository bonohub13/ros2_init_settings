#!/usr/bin/env sh
# -*- coding: utf-8 -*-
echo 'Select the version of ros [ROS | ROS2(DEFAULT)]'

read mode;

if [ $mode = 'ros' ] || [ $mode = 'ROS' ]; then
    source /opt/ros/melodic/setup.bash; ROS_DISTRO='melodic'
else
    source /opt/ros/crystal/setup.bash; ROS_DISTRO='crystal'
fi

echo "The current version of distribution of ROS is $ROS_DISTRO."

if [ $ROS_DISTRO = 'melodic' ]; then
    # Place your workspaces here!
fi

# You can change the version of ros distribution if yours is different! ex. 'kinetic'
