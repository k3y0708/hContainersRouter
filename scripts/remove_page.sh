#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Usage: $0 <page name>"
    exit 1
fi

rm /etc/nginx/containers/$1.conf
nginx -t
if [ $? -eq 0 ]; then
    nginx -s reload
    if [ $? -eq 0 ]; then
        echo "Page $1 removed successfully"
    else
        echo "Failed to reload nginx"
    fi
else
    echo "Failed to remove page $1"
fi
