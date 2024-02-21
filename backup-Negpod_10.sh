#!/bin/bash

# Server credentials
host="64293e56bc62.3a2627c1.alu-cod.online"
username="64293e56bc62"
password="328d3b338a4ced526c9a"

local_dir="/home/mi/Documents/workdir/ALU/summative-2_GSC10/negpod_10-q1"
remote_dir="/summative/1023-2024j"

scp -r "$local_dir" "$username@$host:$remote_dir"
if [ $? -eq 0 ]; then
    echo "Backup successful"
else
    echo "Backup failed"
fi