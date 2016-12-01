#!/bin/bash
#tarring a file 
echo " using tar command to craete a tar.gz file "
mkdir /home/devops/backupdirectory
echo " using tar command to craete a tar.gz file "
#tarring a file 
tar -cvzf $2.tar.gz $1
#zipping a file
echo " using zip command "
zip $2.zip  $1

 
