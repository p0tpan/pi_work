#!/bin/bash

sudo iwconfig wlan0 power off
sudo dhclient wlan0
echo "Connections should be set!"

for i in $(ps aux |grep electron |grep -vi grep | awk '{print $2}'); do kill -9 $i; done


cd /home/pi/MagicMirror
npm start

