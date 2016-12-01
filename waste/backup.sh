#!/bin/bash
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
