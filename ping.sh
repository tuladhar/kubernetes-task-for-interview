#!/bin/bash

while true; do
  redis-cli -h $REDIS_ENDPOINT PING
  sleep 5
done
