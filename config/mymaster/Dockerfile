FROM redis

MAINTAINER Howell <th15817161961@gmail.com>

EXPOSE 26379

ADD sentinel_0.conf /etc/redis/sentinel_0.conf
ADD sentinel_1.conf /etc/redis/sentinel_1.conf
ADD sentinel_2.conf /etc/redis/sentinel_2.conf
RUN chown redis:redis /etc/redis/sentinel_0.conf
RUN chown redis:redis /etc/redis/sentinel_1.conf
RUN chown redis:redis /etc/redis/sentinel_2.conf

ADD redis_0.conf /etc/redis/redis_0.conf
ADD redis_1.conf /etc/redis/redis_1.conf
ADD redis_2.conf /etc/redis/redis_2.conf


ADD start.sh /etc/redis/start.sh
RUN chmod +x /etc/redis/start.sh

ENTRYPOINT ["/etc/redis/start.sh"]

