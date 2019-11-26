#!/bin/bash

export DISPLAY=$DISPLAY
rm -f /home/pi/kiosk.sh
wget https://raw.githubusercontent.com/d0rsha/raspberry_kiosk/master/kiosk.sh --output-document=kiosk.sh
sudo mv -f kiosk.sh /home/pi/kiosk.sh

rm -f /lib/systemd/system/kiosk.service
wget https://raw.githubusercontent.com/d0rsha/raspberry_kiosk/master/kiosk.service --output-document=kiosk.service
sudo mv -f kiosk.service /lib/systemd/system/kiosk.service

rm -f /home/pi/ping.sh
wget https://raw.githubusercontent.com/d0rsha/raspberry_kiosk/master/ping.sh --output-document=ping.sh
sudo mv -f ping.sh /home/pi/ping.sh

sudo raspi-config --expand-rootfs
sudo systemctl enable kiosk 
sudo systemctl status kiosk 
sudo systemctl start kiosk


echo "Everyday boot ended gracefully, rebooting..."
#remove self from autostart
#reboot
