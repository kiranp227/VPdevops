#!/bin/bash
echo -n " enter the length of the series : "
read l
len=`expr $l - 2`
a=0
b=1
echo -n " The series is $a $b"
i=1
while [ $len -ge $i ]
do
sum=` expr $a + $b `
a=$b
b=$sum
echo -n " $sum"
sleep 2
i=`expr $i + 1`
done
echo     
