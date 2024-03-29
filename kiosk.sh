#!/bin/bash
set -x
export XAUTHORITY=/home/pi/.Xauthority; export DISPLAY=:0; xdotool key Return

xset s noblank
xset s off
xset -dpms

unclutter -idle 0.5 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

# sleep 20s
/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk --ignore-certificate-errors --disable-restore-session-state https://dashboard.projectngulia.org/board.html?workspace=ngulia#/live 

#while true; do
#	xdotool keydown ctrl+F5; xdotool keyup ctrl+F5;
#   	sleep 2m
#done
