#!/bin/bash

IP_FILE=/home/$(whoami)/VNC_IP/testfile.txt

CURRENT_IP=$(ifconfig wlan0 | grep inet | head -n 1 | awk '{print $2}')

echo $CURRENT_IP > $IP_FILE
