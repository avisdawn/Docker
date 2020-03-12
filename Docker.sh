#!/bin/bash
cd /home/data
echo "list of files in location in " `pwd`>>/home/output/result.txt
ls *.txt>>/home/output/result.txt
echo "Displaying word count for each file">>/home/output/result.txt
wc -w *.txt |grep -v total >>/home/output/result.txt
echo "Grand Total of each file">>/home/output/result.txt
wc -w *.txt|grep total>>/home/output/result.txt
echo "Displaying file with maximum word count">>/home/output/result.txt
wc -w *.txt|sort -k 1 -n -r|grep -v total|head -1 >>/home/output/result.txt
echo "hostname of the machine ">>/home/output/result.txt
/sbin/ip route|awk '/default/ { print $3 }' >>/home/output/result.txt
echo "My name:Tanya Shree Reena" >>/home/output/result.txt
cat /home/output/result.txt
