#!/bin/bash -e

mkdir -p ~/gitfiles/ros2_init_settings
git clone https://github.com/bonohub13/ros2_init_settings.git ~/gitfiles/ros2_init_settings
cd ~/gitfiles/ros2_init_settings

source ros2_init.bash
source ros2_env_init_settings.bash
source ros2_settings.bash
