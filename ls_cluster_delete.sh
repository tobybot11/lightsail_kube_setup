#!/bin/bash

# possible bundle Ids
# nano_1_0 micro_1_0 small_1_0 medium_1_0 large_1_0

for i in {1..5}; do
	aws lightsail delete-instance --instance-name v$i
done 

