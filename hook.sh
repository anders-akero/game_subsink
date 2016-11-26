#!/bin/bash

# First, get the zip file
cd ~/nodejs/game_subsink/zip/file && wget -O projectmaster.zip -q https://github.com/anders-akero/game_subsink/archive/master.zip
# Second, unzip it, if the zip file existcond, unzip it, if the zip file exists
if [ -f /path/to/put/zip/file/projectmaster.zip ]; then
    # Unzip the zip file
    unzip -q ~/nodejs/game_subsink/zip/file/projectmaster.zip

    # Delete zip file
    rm ~/nodejs/game_subsink/zip/file/projectmaster.zip

    # Rename project directory to desired name
    mv Project-master subsink

    # Delete current directory
    rm -rf ~/nodejs/game_subsink/subsink

    # Replace with new files
    mv subsink ~/nodejs/game_subsink/

    # Perhaps call any other scripts you need to rebuild assets here
    # or set owner/permissions
    # or confirm that the old site was replaced correctly
fi
