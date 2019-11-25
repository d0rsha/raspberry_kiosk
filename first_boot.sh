#!/bin/bash
sudo apt-get update -y 
sudo apt-get upgrade -y 
sudo apt-get dist-upgrade -y 
sudo apt-get autoremove -y 
sudo apt-get autoclean -y 
apt list unclutter
sudo apt-get install -y unclutter
apt list sed
sudo apt-get install -y sed
apt list xdotool
sudo apt-get install -y xdotool
sudo raspi-config --expand-rootfs
chromium-browser https://google.com
echo "First boot ended gracefully"
