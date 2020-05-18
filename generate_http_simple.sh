#!/bin/bash

rnum=$((RANDOM%10000+1))*3
multiplier=`echo "scale=2; $rnum/2" | bc`
#multiplier=`echo "scale=2; $rnum/200" | bc`

#echo $multiplier

cd /opt/trex/v2.61
./t-rex-64 -f ./cap2/http_simple2.yaml -m $multiplier -d 30 --iom 0
#./t-rex-64 -f ./cap2/http_simple2.yaml -m $multiplier -d 30 
sleep 5
