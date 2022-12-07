#!/bin/bash

~/.scripts/login.sh &
~/.scripts/setupDisplay.sh &

picom --experimental-backends &
#wpg -s lavender.png &&

feh --bg-scale ~/.wallpapers/shintaro/shintaroCenterPurp.png
#kitty --hold -e neofetch &
wmname LG3D &
slstatus &
xautolock -time 20 -locker "slock" -detectsleep

#while true; do
	
#	memory=$(free -h | awk '(NR==2){ print $3 }')

#	speaker=$(amixer get -c 1 Master | awk -F'[][]' 'END{print $2 }')

#	clock=$(date +'[%m.%d.%H.%M.%S]')	

#	#temperature=$(sed 's/000$/°C/' /sys/class/thermal/thermal_zone0/temp)	
#	temperature=$(sensors | grep CPUTIN | awk '{print substr($2, 2, length($2))}')

#	#microphone=$(amixer get -c 2 Capture | awk -F'[][]' 'END{ print $6"::"$2 }')	
#	#micbvolume=$(amixer get -c 3 Mic | awk -F '[][]' 'END{ print $6":"$2 }')
	
#	#battery=$(cat /sys/class/power_supply/BAT0/capacity)

#	xsetroot -name " T::$temperature  |  M::$memory  |  V::$speaker  |  $clock " &
	
#	wait
#done &
