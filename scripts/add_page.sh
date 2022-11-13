#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Usage: $0 <page name> <page title>"
    exit 1
fi

cat /etc/nginx/templates/container.conf | sed "s/@@CONTAINER_NAME@@/$1/g" | sed "s/@@CONTAINER_PORT@@/$2/g" > /etc/nginx/containers/$1.conf
