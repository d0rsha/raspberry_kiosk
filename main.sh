# Setup chromium autolaunch
export DISPLAY=$DISPLAY

sudo rm -f /home/pi/kiosk.sh
wget https://raw.githubusercontent.com/d0rsha/raspberry_kiosk/master/kiosk.sh --output-document=kiosk.sh
sudo mv -f kiosk.sh /home/pi/kiosk.sh
sudo chmod +x /home/pi/kiosk.sh

sudo rm -f /lib/systemd/system/kiosk.service
wget https://raw.githubusercontent.com/d0rsha/raspberry_kiosk/master/kiosk.service --output-document=kiosk.service
sudo mv -f kiosk.service /lib/systemd/system/kiosk.service

sudo rm -f /home/pi/ping.sh
wget https://raw.githubusercontent.com/d0rsha/raspberry_kiosk/master/ping.sh --output-document=ping.sh
sudo mv -f ping.sh /home/pi/ping.sh
sudo chmod +x /home/pi/ping.sh

sudo systemctl stop kiosk 
sudo systemctl disable kiosk 
sudo systemctl enable kiosk 
sudo systemctl status kiosk 
sudo systemctl start kiosk

# Setup splash
sudo mv -f splash.png /home/pi/splash.png
sudo chmod +x splash.sh
./splash.sh

# Setup background 
sudo mv -f background.png /home/pi/background.png
pcmanfm --set-wallpaper="/home/pi/background.png"

# ReBoot
reboot
