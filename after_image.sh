#!/bin/bash
sudo raspi-config --expand-rootfs


#remove self from autostart
sudo sed '/./home/pi/after_image.sh/d' etc/xdg/lxsession/LXDE-pi/autostart
echo "Everyday boot ended gracefully, rebooting..."
reboot
