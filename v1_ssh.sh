#!/bin/bash


IP=`cat ls_hosts | awk '{ print $1 }'`
echo "ssh -i LightsailDefaultPrivateKey.pem ubuntu@$IP"
