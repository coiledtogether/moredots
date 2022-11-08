#!/bin/bash

~/.scripts/setupDisplay.sh &

picom --experimental-backends &
wpg -s lavender.png &&

kitty --hold -e neofetch &
wmname LG3D &
