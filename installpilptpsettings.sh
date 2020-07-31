zenity --progress --text="Starting instilation" --progres="0"

sleep 1

zenity --progress --text="Moving files" --progres="5"

sudo mv /home/pi/lptpsettings/settings.desktop /usr/share/applications/settings.desktop

sudo mv /home/pi/lptpsettings/uninstallpilptpsettings.sh /home/pi/uninstallpilptpsettings.sh

zenity --progress --text="Making files executible" --progres="10"

chmod +x /home/pi/uninstalllptpsettings.sh

zenity --progress --text="Unzipping files" --progres="20"

unzip /home/pi/lptpsettings/lptpsettings.zip

zenity --progress --text="Files unziped, now moving into proper directorys" --progres="40"

mv /home/pi/lptpsettings/home/pi/.lptpsettings /home/pi/.lptpsettings

zenity --progress --text="Removing unused files" --progres="60"

rm -d -r /home/pi/lptpsettings

zenity --progress --text="Instilation completed!" --progres="100"

zenity --progress --text="Succesfuly installed lptpsettings to this device!" --progress="100" --auto-close
