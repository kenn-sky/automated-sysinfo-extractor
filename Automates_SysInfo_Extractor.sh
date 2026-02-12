#!/bin/bash

#Student: Siew Kai Yuan Kenneth, Student code: 1690073G, Class Code: CCK4_250916, Trainer Name: James 

#Identify the system's public IP.
echo "System's public IP address:"
curl ifconfig.me && echo && echo

#Identify the private IP address assigned to the system's network interface.
echo "System's private IP address:"
ifconfig | grep inet | head -n 1 | awk '{print $2}' && echo

#Display the MAC address (masking sensitive portions for security).
echo "MAC Address:"
ifconfig | grep ether | awk '{print "XX:XX:XX:" substr($2, 10, 8)}' && echo

#Display the percentage of CPU usage for the top 5 processes.
echo "Percentage of CPU usage for top 5 processes"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 && echo

#Display memory usage statistics: total and available memory.
echo "Total & available memory"
free -h | grep Mem | awk '{print "Total: " $2 " Available: " $7}' && echo

#List active system services with their status.
echo "Active system services & their status"
systemctl list-units --type=service --state=active | grep "running" | awk '{print $1 " " $4}' && echo

#Locate the Top 10 Largest Files in /home
echo "Top 10 Largest Files in /home"
find /home -type f -exec du -h {} + | sort -rh | head -n 10
