#!/bin/bash

USER=valen
ID=valentest
IP_FILE=/home/$USER/VNC_IP/jetson-$ID.txt

#CURRENT_IP=$(ifconfig wlan0 | grep inet | head -n 1 | awk '{print $2}')
CURRENT_IP=$(hostname -I | awk '{print $1}')

echo "HELLO\n" >> /home/valen/out

echo $CURRENT_IP > $IP_FILE
cd /home/$USER/VNC_IP/
git add $IP_FILE
git commit -m'ip change'
git push origin master
echo $? >> /home/valen/out
echo $CURRENT_IP >> /home/valen/out
