#!/bin/bash
hyprctl dispatch togglespecialworkspace

WayPID=$(pgrep ^waybar)
echo $WayPID

if [ -z "$WayPID" ] && [ "$(hyprctl activewindow | grep "workspace: " | cut -d' ' -f2)" == "-99" ]; then
	waybar &
	exit
else
	kill -9 $WayPID
	echo "Terminated waybar with PID: $WayPID"
fi