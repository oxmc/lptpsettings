DIRECTORY="/home/pi/.lptpsettings"
ver="alpha"
computername='OMSXz'
modelnum='AF567$*&FG#7'

inconfig="----------info----------
$computername
$modelnum
------------------------
software version. $ver
------------------------

" 
echo "$inconfig
"> "${DIRECTORY}/config.txt"
