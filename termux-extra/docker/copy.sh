#!/bin/sh

CURRENT_PATH=$(realpath $0)
CURRENT_PATH=$(dirname $CURRENT_PATH)

scp -P 2222 $CURRENT_PATH/start-docker.sh root@localhost:/root/start-docker