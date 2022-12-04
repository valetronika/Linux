#!/bin/bash


for run in {1..10}
do
	date +"%H:%M:%S"
	ps -ef |wc -l| awk '{print $1}'
	#sleep 5
done
cat /proc/cpuinfo > info.txt
cat /etc/os-release|head -1|grep Amazon >>info.txt
cat /etc/os-release|head -1| cut -c7-12 >>info.txt

for dir in {50..100}
do
touch $dir
done

