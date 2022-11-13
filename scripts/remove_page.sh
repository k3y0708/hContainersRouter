#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Usage: $0 <page name>"
    exit 1
fi

rm /etc/nginx/containers/$1.conf
