#!/bin/bash

# Remote server details
HOST="2f05c1f8800b.3be8ebfc.alu-cod.online"
USERNAME="2f05c1f8800b"
PASSWORD="d4a1d225d0abda9549d8"
REMOTE_DIR="/summative/1023-2024j"

# Archive the directory
tar -czf negpod_id-q1.tar.gz negpod_id-q1

# Transfer the archive to the remote server
sshpass -p "$PASSWORD" scp negpod_id-q1.tar.gz $USERNAME@$HOST:$REMOTE_DIR

# Clean up temporary files
rm negpod_id-q1.tar.gz

