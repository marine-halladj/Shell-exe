#!/bin/bash

d=$(date +%d-%m-%Y-'%H:%M')

cat /var/log/auth.log | grep -c opened > number_connection-$d

tar -cvf ./number_connection-$d.tar ./ && mv number_connection-$d.tar Backup 
