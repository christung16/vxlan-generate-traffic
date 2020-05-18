#!/bin/bash

rnum=$((RANDOM%10000+1))*3
#multiplier=`echo "scale=2; $rnum/2" | bc`
multiplier=`echo "scale=2; $rnum/9000" | bc`

echo $multiplier

cd /opt/trex/v2.61
./t-rex-64 -f ./cap2/sfr_agg_tcp14_udp11_http200msec_new_high_new_nir_profile_ipg_mix_2.yaml -m $multiplier -d 30 --iom 0
#./t-rex-64 -f ./cap2/sfr_agg_tcp14_udp11_http200msec_new_high_new_nir_profile_ipg_mix_2.yaml -m $multiplier -d 30
sleep 5
