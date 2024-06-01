#!/bin/sh
echo "Starting docker..."

rm /var/run/docker.pid > /dev/null 2>&1

echo "Exposing port 2375..."

dockerd -H tcp://0.0.0.0:2375 --iptables=false > /dev/null 2>&1 &