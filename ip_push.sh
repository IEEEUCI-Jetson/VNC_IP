#!/bin/bash

USER=valen
ID=valentest
IP_FILE=/home/$USER/VNC_IP/jetson-$ID.txt

CURRENT_IP=$(ifconfig wlan0 | grep inet | head -n 1 | awk '{print $2}')

echo $CURRENT_IP > $IP_FILE
cd /home/$USER/VNC_IP/
runuser -l $USER -c "cd /home/$USER/VNC_IP; git add $IP_FILE"
runuser -l $USER -c "cd /home/$USER/VNC_IP; git commit -m'ip change'"
runuser -l $USER -c "cd /home/$USER/VNC_IP; git push origin master"
