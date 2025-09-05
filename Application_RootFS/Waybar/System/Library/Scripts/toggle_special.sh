#!/bin/bash
hyprctl dispatch togglespecialworkspace

WayPID=$(pgrep ^waybar)
echo $WayPID

if [ -z "$WayPID" ] && [ "$(hyprctl activewindow | grep "workspace: " | cut -d' ' -f2)" == "-99" ]; then
	coproc waybar $*
	WayPID=$!
else
	kill -9 $WayPID
	echo "Terminated waybar with PID: $WayPID"
fi

while true; do
	echo "LOOPING"
	if [ "$(hyprctl activewindow | grep "workspace: " | cut -d' ' -f2)" != "-99" ]; then
		kill -9 $WayPID
		echo "Terminated waybar with PID: $WayPID"
		exit
	fi
	sleep 0.5
done
