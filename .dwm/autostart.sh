#!/bin/bash

~/.scripts/setupDisplay.sh &

picom --experimental-backends &
wpg -s lavender.png &&

kitty --hold -e neofetch &
wmname LG3D &

while true; do
	
	memory=$(free -h | awk '(NR==2){ print $3 }')

	speaker=$(amixer get -c 2 Master | awk -F'[][]' 'END{print $2 }')

	microphone=$(amixer get -c 2 Capture | awk -F'[][]' 'END{ print $6"::"$2 }')	
	#micbvolume=$(amixer get -c 3 Mic | awk -F '[][]' 'END{ print $6":"$2 }')
	
	temperature=$(sed 's/000$/°C/' /sys/class/thermal/thermal_zone0/temp)

	battery=$(cat /sys/class/power_supply/BAT0/capacity)

	clock=$(date +'[%m.%d.%H.%M.%S.%N]')	

	xsetroot -name " T::$temperature | M: $memory | S::$speaker | $clock " &
	
	wait
done &
