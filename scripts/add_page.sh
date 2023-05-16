#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Usage: $0 <page name> <page port>"
    exit 1
fi

cat /etc/nginx/templates/container.conf | sed "s/@@CONTAINER_NAME@@/$1/g" | sed "s/@@CONTAINER_PORT@@/$2/g" > /etc/nginx/containers/$1.conf
nginx -t
if [ $? -eq 0 ]; then
    nginx -s reload
    if [ $? -eq 0 ]; then
        echo "Page $1 added successfully"
    else
        echo "Failed to reload nginx"
    fi
else
    echo "Failed to add page $1"
fi
