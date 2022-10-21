#! /bin/sh

echo "Username: " $USER
echo "Today's date: " `date +%d.%m.%Y`
echo "The time: " `date +%r`


current_dir=`pwd`
echo "Current working directory: " $current_dir
echo "There are" `ls -l | wc -l` "files in this directory"
echo "The biggest file in the current directory:" `ls -S $current_dir | head -1`
