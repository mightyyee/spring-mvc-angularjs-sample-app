#!/bin/bash
echo "Restarting Attachment BE..."
kill -9 $(lsof -t -i:8080)
echo "Attachment BE successfully stopped. Starting Attachment BE..."
cd /opt/attachmentcatalog/back-end
nohup java -jar $(ls Attachment*) > ~/attachment-backend.log 2>&1 &
echo "Attachment BE successfully started."
