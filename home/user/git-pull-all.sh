#!/bin/bash

# This script is used to update all the git projects to lastest.
# It equals to manually do 'git pull' under each directory.
# If any conflict occurs, the merge will be aborted.
# This script will only update those brother directories aside by itself,
# it will not update the inside sub directories recursively.

# find all directories under current dir which is not hidden
for dir in $(find . -maxdepth 1 -type d -not -path '*/\.*');
do
	if [ $dir = "." ]; then
		echo "skip $dir"
		continue
	fi
	if [ $dir = ".." ]; then
		echo "skip $dir"
		continue
	fi
	cd $dir
	echo $PWD
	git pull
	cd ..
done
