#!/bin/bash
#Set date variable
date=$(date)

#Get IPS from alerts file
grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' file.txt > ips_temp

#Remove duplicates from file and pipe into Ips.txt
sort -u ips_temp > ips.txt

#Start Forloop to ping listed IPs in the ips.txt file.
grep -v '^ *#' < ips.txt | while IFS= read -r ip
do
echo "$date" "Pinging" "$ip" "now!"
    ping -c 1 "$ip" > /dev/null
    if [ $? -eq 0 ]; 
    then
    echo "$date" "Node" "$ip" "is up"
    else
    echo "$date" "Node" "$ip" "down"
    fi
done
#End of Forloop
#Remove files that were used.
rm ips_temp
rm ips.txt
