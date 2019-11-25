#!/bin/bash
export XAUTHORITY=/home/pi/.Xauthority; export DISPLAY=:0.0; xdotool key Return

xset s noblank
xset s off
xset -dpms

unclutter -idle 0.5 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk --ignore-certificate-errors --disable-restore-session-state https://www.latlmes.com/breaking/your-sensational-news-headline-here-3 & 

while true; do
   	WID=$(xdotool search --onlyvisible --class chromium|head -1)
	xdotool windowactivate ${WID}
	xdotool key ctrl+F
   	sleep 15
done
