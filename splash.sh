#!/bin/bash

# Install lightdm
apt list lightdm
sudo apt-get install -y lightdm

#Install plymouth
apt list plymouth
sudo apt-get install -y plymouth plymouth-themes
apt list pix-plym-splash
sudo apt-get install -y pix-plym-splash

#Move your custom splash image
wget https://raw.githubusercontent.com/d0rsha/raspberry_kiosk/master/splash.png --output-document=splash.png
sudo mv splash.png /usr/share/plymouth/themes/pix

sudo echo "disable_splash=1" >> /boot/config.txt
sudo echo "# Disable under-voltage warning" >> /boot/config.txt
sudo echo "avoid_warnings=1" >> /boot/config.txt
sudo echo "splash quiet plymouth.ignore-serial-consoles logo.nologo vt.global_cursor_default=0" >> /boot/cmdline.txt
sudo sed -i 's/console=tty1/console=tty3/g' /boot/cmdline.txt


sudo sed '/message_sprite/d' /usr/share/plymouth/themes/pix/pix.script
sudo sed '/my_image/d' /usr/share/plymouth/themes/pix/pix.script

#sudo nano /usr/share/plymouth/themes/pix/pix.script
# Edit the plymouth pix.script, remove the following:
#message_sprite = Sprite();
#message_sprite.SetPosition(screen_width * 0.1, screen_height * 0.9, 10000);
#my_image = Image.Text(text, 1, 1, 1);
#message_sprite.SetImage(my_image);