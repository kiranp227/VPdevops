#!/bin/bash
if [ -f $1 ]
 then
  echo "File $1 is in existance "
  echo "Printing IP adresses from the file "
  for IP in `cat $1`
   do 
    echo "$IP"
    sleep 1 
   done
  else 
  echo " No Such file found "
fi

