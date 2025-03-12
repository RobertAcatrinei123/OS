#!/bin/bash

FILES=0
DIRS=0

recursiveCount() {
    for i in $1/*; do #iterates through all files in the directory
        if test -d "$i"; then #checks to see if the current file is a directory
            DIRS=$(expr $DIRS + 1) 
            recursiveCount "$i" #recursively calls the function in the directory
        elif test -f "$i"; then #checks to see if the current file is a file
            FILES=$(expr $FILES + 1)
        fi
    done
}

recursiveCount "." #calls the function in the current directory

echo "Files: $FILES"
echo "Directories: $DIRS"
