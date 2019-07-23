#!/bin/bash
# hann@ieee.org

WORKSPACE="/home/$USER/catkin_ws"
SOURCESPACE="/home/$USER/ros_best_practices"

echo "=================================="
echo "1. Preparation		            "
echo "---"

# install ROS if needed
if [ -d '/opt/ros' ]; then
	echo "ROS installed";
else
	. install_ros.sh
	. setup_ros.sh
fi


echo "=================================="
echo "2. Setup workspace:			    "
echo "---"

if [ -d $WORKSPACE ]; then
	echo "$WORKSPACE created";
else
	# echo $WORKSPACE;
	mkdir -p $WORKSPACE/src
	ln -s $SOURCESPACE/ros_package_template/ $WORKSPACE/src/
fi


echo "=================================="
echo "3. Install dependencies:			    "
echo "---"

# e.g. VICON
if [ -d "$WORKSPACE/src/ros_vrpn_client" ]; then
	echo "vrpn_client installed";
else
	cd $WORKSPACE/src/
	# git clone https://github.com/Aerial-Robotics-Laboratory/ros_vrpn_client.git
	# git clone https://github.com/Aerial-Robotics-Laboratory/vrpn_catkin.git
	# git clone https://github.com/Aerial-Robotics-Laboratory/catkin_simple.git
	# git clone https://github.com/Aerial-Robotics-Laboratory/glog_catkin.git
	# sudo apt-get install -y autoconf
fi

echo "=================================="
echo "4. Workspace      			    "
echo "---"
echo "$WORKSPACE/src:"
ls $WORKSPACE/src
