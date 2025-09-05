#!/bin/bash

# Homemade, bootleg sudo.

Path=$(pwd)
Arguments=$@
su - -c "cd $Path && $Arguments"
