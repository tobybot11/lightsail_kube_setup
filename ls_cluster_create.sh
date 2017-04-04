#!/bin/bash

# possible bundle Ids
# nano_1_0 micro_1_0 small_1_0 medium_1_0 large_1_0

for i in {1..5}; do
	echo "---- v$i ----"
	aws lightsail create-instances --availability-zone us-east-1a --instance-names v$i --blueprint-id ubuntu_16_04 \
	        --bundle-id nano_1_0 
done

sleep 30

for i in {1..5}; do
	echo -e `aws lightsail get-instance --instance-name v$i | jq -r '.instance.publicIpAddress'` "\tv1"
done > ls_hosts

