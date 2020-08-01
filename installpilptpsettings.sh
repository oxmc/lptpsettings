(
echo "# Starting instalation" ; sleep 1
echo "10" ; sleep 1
echo "# Moving files" ; sleep 1
sudo mv /home/pi/lptpsettings/settings.desktop /usr/share/applications/settings.desktop
sudo mv /home/pi/lptpsettings/uninstallpilptpsettings.sh /home/pi/uninstallpilptpsettings.sh
echo "35" ; sleep 1
echo "# Making files executable" ; sleep 1
chmod +x /home/pi/uninstalllptpsettings.sh
echo "40" ; sleep 1
echo "# Unzipping files" ; sleep 1
unzip /home/pi/lptpsettings/lptpsettings.zip
echo "50" ; sleep 1
echo "# Files finished unzipping" ; sleep 1
mv /home/pi/lptpsettings/home/pi/.lptpsettings /home/pi/.lptpsettings
echo "60" ; sleep 1
echo "# Getting rid of useles files" ; sleep 1
echo "69" ; sleep .5
echo "70" ; sleep .5
echo "78" ; sleep .5
rm -d -r /home/pi/lptpsettings
echo "80" ; sleep 1
echo "# Instilation Completed!" ; sleep 1
echo "99" ; sleep 1
echo "# Succesfully installed lptpsettings to this device!" ; sleep 1
echo "100" ; sleep 1
) |
zenity --progress \
  --title="Installing lptpsettings" \
  --text="" \
  --percentage=0

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="Instalation canceled."
fi
