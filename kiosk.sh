#!/bin/bash
set -x
export XAUTHORITY=/home/pi/.Xauthority; export DISPLAY=$DISPLAY; xdotool key Return

xset s noblank
xset s off
xset -dpms

unclutter -idle 0.5 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

sleep 20s
/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk --ignore-certificate-errors --disable-restore-session-state https://www.latlmes.com/breaking/your-sensational-news-headline-here-3 & 

while true; do
	xdotool keydown ctrl+F5; xdotool keyup ctrl+F5;
   	sleep 1d
done
