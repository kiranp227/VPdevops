#!/bin/bash
cd /tmp/myscripts
for variable in $(ls)
do
echo
 cat "$variable"
echo
done
