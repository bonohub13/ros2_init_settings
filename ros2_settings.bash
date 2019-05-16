sudo apt install python3-colcon-common-extensions -y

######### ros2 on Linux: 101 #########

# to fully automate the process, just remove the "#" below to deactivate comment <- please, ignore
mkdir -p ~/ros2_ws/src # change workspace name, if needed(MAKE SURE TO CHANGE ALL DIR NAMES BELOW!)
cd ~/ros2_ws/src

# === git installation ===
git clone https://github.com/ros2/examples.git

cd examples
git checkout crystal # if your version differs, change from "crystal"
cd ~/ros2_ws
# --------------------------------------------------------------------------------------------------
colcon build --symlink-install
colcon test
. install/setup.bash
