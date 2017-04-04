#!/bin/bash



[ "$1" ] && echo Yes; 
[ ! "$1" ] && { echo No; exit 1; }

echo {$1}
