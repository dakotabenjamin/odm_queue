#!/bin/bash

# There is an icrontab that waits for a directory to be created in the dmb2 directory. 
# This needs to be fixed for when there is more than one user. 

# Check the directories to see that there are files and shit. i

# $1 is the name of the user, $2 is the name of the directory. 
dir=$1
folder=$2
# go to the directory with new files
cd $1/$2

# Check to see if there are any .jpg files
shopt -s nullglob
set -- *.jpg
if [ "$#" -eq 0 ]; then
	#error message, exit
	echo "directory doesn't have any .jpg or has incorrect file types"
	exit
fi

# add them to the queue. For testing, resizing to something manageable. 
ts ~/OpenDroneMap/run.pl # --resize-to 1200

# When the process is finished, email the zipped results
# Future feature
