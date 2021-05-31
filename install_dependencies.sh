#!/bin/bash
# check that the filename was supplied (keeping it simple for the example)
set -o nounset

packagefile="prerequisites.txt"

# initialize the package variable
packages=''

# read the lines of the package file
while IFS= read -r line; do
	    packs+=" $line"
    done < $packagefile

    # apt install all of the packages
    apt install -y $packs
cd /usr/lib/x86_64-linux-gnu/
sudo ln -s alsa-lib/libasound_module_conf_pulse.so libasound_module_conf_pulse.so
