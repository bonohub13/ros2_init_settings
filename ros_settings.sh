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
    source ~/workspace/ros_ws/devel/setup.bash
    source ~/workspace/neko_ws/devel/setup.bash
    source ~/workspace/test_ws/devel/setup.bash
    source ~/programming/ros/catkin_ws/devel/setup.bash
fi