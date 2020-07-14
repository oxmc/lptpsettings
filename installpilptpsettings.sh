sudo mv /home/pi/lptpsettings/settings.desktop /usr/share/applications/settings.desktop

sudo mv /home/pi/lptpsettings/uninstalllptpsettings.sh /home/pi/uninstalllptpsettings.sh

chmod +x /home/pi/uninstalllptpsettings.sh

unzip /home/pi/lptpsettings/lptpsettings.zip

mv /home/pi/lptpsettings/home/pi/.lptpsettings /home/pi/.lptpsettings

rm -d -r /home/pi/lptpsettings

echo "Succesfuly installed lptpsettings to this device!"
