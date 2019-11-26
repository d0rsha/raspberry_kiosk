sudo cp asplashscreen /etc/init.d/asplashscreen
sudo cp splashscreen.service /etc/systemd/system/splashscreen.service

sudo systemctl enable splashscreen
sudo systemctl start splashscreen
sudo systemctl status splashscreen
