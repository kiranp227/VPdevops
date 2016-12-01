#!/bin/bash
#getting IP adressess from a file
for var in `cat sshIP.txt`
do 
#installing httpd on remote machines
ssh vagrant@$var sudo yum install httpd -y
done
for var in `cat sshIP.txt`
do
ssh vagrant@$var sudo service iptables stop
ssh vagrant@$var sudo service httpd start
done
for var in `cat sshIP.txt`
do
ssh vagrant@$var sudo chkconfig httpd on
done
