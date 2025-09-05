#!/bin/bash

# This file is used to display the TTY-Style Login.
# This script is used for the root Bash Hotkey.

Distribution=$(cat /etc/issue)
Distribution=${Distribution// \\n \\l/}

echo -e "$Distribution $(hostname) tty1"
echo ""
echo "$(hostname) login: root"
