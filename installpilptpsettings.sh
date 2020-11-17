(
echo "# Starting instalation" ; sleep 1
echo "10" ; sleep 1
echo "# Unzipping files" ; sleep 1
unzip /home/pi/lptpsettings/lptpsettings.zip
echo "20" ; sleep 1
echo "# Files finished unzipping" ; sleep 1
echo "30" ; sleep 1
echo "# Moving files" ; sleep 1
sudo mv /home/pi/lptpsettings/settings.desktop /usr/share/applications/settings.desktop
echo "40" ; sleep 1
mv /home/pi/home/pi/.lptpsettings /home/pi/.lptpsettings
echo "50" ; sleep 1
sudo mv /home/pi/lptpsettings/uninstall.desktop /usr/share/applications/lptpsettingsuninstaller.desktop
echo "60" ; sleep 1
sudo mv /home/pi/lptpsettings/uninstallpilptpsettings.sh /usr/share/applications/uninstallpilptpsettings.sh
echo "70" ; sleep 1
echo "# Making files executable" ; sleep 1
chmod +x /usr/share/applications/uninstalllptpsettings.sh
echo "80" ; sleep 1
echo "# Getting rid of useles files" ; sleep 1
echo "85" ; sleep 1
rm -d -r /home/pi/lptpsettings
echo "90" ; sleep 1
rm -d -r /home/pi/home/* ; sleep 1
echo "100"
echo "# Succesfully installed lptpsettings to this device!" ; sleep 1
) |
zenity --progress \
  --title="Installing lptpsettings" \
  --text="" \
  --percentage=0

if [ "$?" = 1 ] ; then
        zenity --error \
          --text="Instalation canceled."
fi
