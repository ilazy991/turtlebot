#!/bin/bash

echo "remap the device serial port(ttyUSBX) to turtlebot_arm"
echo "turtlebot_arm usb connection as /dev/arm , check it using the command : ls -l /dev|grep ttyUSB"
echo "start copy arm.rules to  /etc/udev/rules.d/"
echo "`rospack find turtlebot_arm`/scripts/arm.rules"
sudo cp `rospack find turtlebot_arm`/scripts/arm.rules  /etc/udev/rules.d
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish "
