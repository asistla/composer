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
