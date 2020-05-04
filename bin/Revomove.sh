#!/bin/bash
. ./bin/ls-andact.lib

#Path containing the files.
DIR="/home/${USER}/Documents/test"
#Maximum limit of files in the folder.
FILES=2

#Entering the application folder.
cd "$(dirname "$0")"
#Time base in seconds.
while :; do
	to_execute $DIR $FILES | cat >> "./logs/$(date +%F).txt" &
	sleep 36000
done
