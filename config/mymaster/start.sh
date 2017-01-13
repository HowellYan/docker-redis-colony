#!/bin/sh
cd /etc/redis/
exec nohup redis-server /etc/redis/redis.conf > nohup.out1 2>&1&

exec docker-entrypoint.sh redis-server /etc/redis/sentinel.conf --sentinel