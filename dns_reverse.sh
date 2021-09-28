#!/bin/bash

echo "What is the IP?"
read IP

echo "What is the first xxx for the range?"
read x

echo "What is the second yyy for the range?"
read y

for ip1 in $(seq $x $y)
do
host -t ptr $IP.$ip1 | grep -v "$IP" | cut -d " " -f 5 | sed 's/.$//'g
done
