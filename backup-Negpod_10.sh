#!/bin/bash

# Server credentials
host="64293e56bc62.3a2627c1.alu-cod.online"
username="64293e56bc62"
password="328d3b338a4ced526c9a"

local_dir="/home/mi/Documents/workdir/ALU/summatives/anonymous_test"
remote_dir="/summative/1023-2024j"
files_to_backup="file1.txt file2.txt file3.txt"
for file in $files_to_backup; do
    scp "$local_dir/$file" "$username@$host:$remote_dir"
    if [ $? -eq 0 ]; then
        echo "Backup of $file successful"
    else
        echo "Backup of $file failed"
    fi
done
