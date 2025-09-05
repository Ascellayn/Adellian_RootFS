#!/bin/bash

# This file is used to display the systemd styled authentification prompt.
# This script is used by several 1 line commands that require root authentification.

echo -e "\e[31m==== AUTHENTIFICATION REQUIRED ====\e[0m"
echo "Authentication is required to $1."
echo "Authenticating as: root"

