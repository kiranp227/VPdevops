#!/bin/bash
<<<<<<< HEAD
#tarring a file 
echo " using tar command to craete a tar.gz file "
mkdir /home/devops/backupdirectory
echo " using tar command to craete a tar.gz file "
#tarring a file 
tar -cvzf $2.tar.gz $1
#zipping a file
echo " using zip command "
zip $2.zip  $1

 
=======
LOGDIR='/tmp/scripts/logfiles'
BACKUPDIR='/tmp/scripts/logs_backup'
mkdir -p $BACKUPDIR
for file in `cat /tmp/scripts/logfilelist`
do
  if [ -f $LOGDIR/$file ]
  then  
    echo "Copying $file to logs_backup directory."
    cp $LOGDIR/$file $BACKUPDIR
  else
    echo "$file log file does exist, skipping."
  fi
done
echo
echo
echo "Zipping log files"
tar -cvzf logs_backup.tgz /tmp/scripts/logs_backup
echo
echo
echo "Backup completed successfully."
>>>>>>> e69aa8c4b02691fa4cfdc094c098bb39b943bb3c
