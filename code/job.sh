#!/bin/bash

cat datadump_s5-"$1".csv | tail -n +2 | cut -d, -f 4,8 | sort |uniq -c |  tr -s "\ " "\ " | cut -b 2- | tr "\ " "," | tr "," " " > map_"$1".txt

cat datadump_s5-"$1".csv | tail -n +2 | cut -d, -f 15,16 | sort |uniq -c |  tr -s "\ " "\ " | cut -b 2- | tr "\ " "," | tr "," " " > operator_"$1".txt

cat datadump_s5-"$1".csv | tail -n +2 | cut -d, -f 15,19 | sort |uniq -c |  tr -s "\ " "\ " | cut -b 2- | tr "\ " "," | tr "," " " > primaryweapon_"$1".txt
