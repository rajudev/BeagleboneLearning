#!/bin/bash
#@rajuvindane
#based on the script https://github.com/raspberrypilearning/temperature-log


timestamp=`date +%F_%H-%M-%S`
echo "Temperature Log - $(date)" >/root/TemperatureLogs/temperature_log_$timestamp.txt
while :
do
#	temp=`sensors`
	sensors
#	temp=${temp:5:16}
	echo $temp >>/root/TemperatureLogs/temperature_log_$timestamp.txt
	sleep 60
done
