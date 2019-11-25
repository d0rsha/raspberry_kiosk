#!/bin/bash
sudo apt-get update -y 
sudo apt-get upgrade -y 
sudo apt-get dist-upgrade -y 
sudo apt-get autoremove -y 
sudo apt-get autoclean -y 
sudo apt-get install -y unclutter
sudo apt-get install -y sed
sudo apt-get install -y xdotool
sudo raspi-config --expand-rootfs
chromium-browser & 
echo "First boot ended gracefully"

