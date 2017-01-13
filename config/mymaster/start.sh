#!/bin/sh
cd /etc/redis/
#6379
exec nohup redis-server /etc/redis/redis_0.conf > nohup.out1 2>&1&

#6380
exec nohup redis-server /etc/redis/redis_1.conf > nohup.out2 2>&1&

#6381
exec nohup redis-server /etc/redis/redis_2.conf > nohup.out3 2>&1&

#26381
exec nohup docker-entrypoint.sh redis-server /etc/redis/sentinel_1.conf --sentinel  > nohup.out4 2>&1&

#26380
exec nohup docker-entrypoint.sh redis-server /etc/redis/sentinel_2.conf --sentinel  > nohup.out5 2>&1&

#26379
exec docker-entrypoint.sh redis-server /etc/redis/sentinel_0.conf --sentinel