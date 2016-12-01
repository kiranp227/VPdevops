#!/bin/bash
#simple copy script
cp $1 $2
#verify whether file copied or not
echo " details of $2 "
ls -lh $2
