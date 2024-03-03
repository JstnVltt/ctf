#!/bin/bash

# Config file, NOT PART OF CTF

cleanup() {
    echo "Cleanup in progress..."

    # Commands to clean the system
    #...

    echo "Cleanup done, exiting ctf."
    sleep 1s
    exit
}

trap cleanup INT TERM

service ssh start
service ssh restart
service cron start

echo Go get this flag !

while :; do
    sleep 1s
done
