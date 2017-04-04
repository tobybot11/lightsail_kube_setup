#!/bin/bash

# possible bundle Ids
# nano_1_0 (.5Gram too small) - paging - sample size of 2
# micro_1_0 small_1_0 medium_1_0 large_1_0

for i in 1; do
	echo "---- v$i ----"
	aws lightsail create-instances --availability-zone us-east-1a --instance-names v$i --blueprint-id ubuntu_16_04 \
	        --bundle-id micro_1_0
done


# 20s was too short .. got refused connect twice 
SLEEP=37
echo "---- sleeping $SLEEP -----"
sleep $SLEEP

for i in 1; do
	IP=`aws lightsail get-instance --instance-name v$i | jq -r '.instance.publicIpAddress'`
	echo -e $IP "\tv1"
done > ls_hosts

echo "---- 1st one is in your copy buffer ----"
echo "ssh -i LightsailDefaultPrivateKey.pem ubuntu@$IP" 
echo "ssh -i LightsailDefaultPrivateKey.pem ubuntu@$IP" | pbcopy
echo "scp -i LightsailDefaultPrivateKey.pem ik.cpio ubuntu@$IP:" 

# ik stands for install kubernetes
