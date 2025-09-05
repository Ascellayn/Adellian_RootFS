#!/bin/bash

# This is the script that runs when you use the Bash Hotkey, specifically the root version.

clear
/bin/bash /System/Library/Templates/login.sh
/bin/bash /System/Library/sudo.sh "/bin/bash /System/Library/Templates/motd.sh && /bin/bash"
