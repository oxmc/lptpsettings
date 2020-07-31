sleep 2|tee >(zenity --progress --text="Starting instilation" --progress="0" --no-cancel)

sleep 1|tee >(zenity --progress --text="Moving files" --progress="5" --no-cancel)

sudo mv /home/pi/lptpsettings/settings.desktop /usr/share/applications/settings.desktop

sudo mv /home/pi/lptpsettings/uninstallpilptpsettings.sh /home/pi/uninstallpilptpsettings.sh

sleep 2|tee >(zenity --progress --text="Making files executible" --progress="10" --no-cancel)

chmod +x /home/pi/uninstalllptpsettings.sh

sleep 2|tee >(zenity --progress --text="Unzipping files" --progress="20" --no-cancel)

unzip /home/pi/lptpsettings/lptpsettings.zip

sleep 2|tee >(zenity --progress --text="Files unziped, now moving into proper directorys" --progress="40" --no-cancel)

mv /home/pi/lptpsettings/home/pi/.lptpsettings /home/pi/.lptpsettings

sleep 2|tee >(zenity --progress --text="Removing unused files" --progress="60" --no-cancel)

rm -d -r /home/pi/lptpsettings

sleep 2|tee >(zenity --progress --text="Instilation completed!" --progress="100" --no-cancel)

sleep 2|tee >(zenity --progress --text="Succesfuly installed lptpsettings to this device!" --progress="100" --no-cancel)
