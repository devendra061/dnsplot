#!/bin/bash
#This script will read bind.log file
#Assumption is made that log file is located at /var/lib/named/var/log/bind.log
awk -F " |:" '{print $1" "$2":"$3}' /var/lib/named/var/log/bind.log|uniq -c  > dns_log_analysisAllRecords

gnuplot ./dns_plot_script.gp > dnstraffic.png
