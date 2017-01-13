# docker-redis-colony 
**Redis colony with Docker Compose** 

Using Docker Compose to setup a redis colony with sentinel.

This project is inspired by the project of [https://github.com/th15817161961/docker-redis-colony] [1]

## Prerequisite

Install [Docker][4] and [Docker Compose][3] in testing environment

If you are using Windows, please execute the following command before "git clone" to disable changing the line endings of script files into DOS format

```
git config --global core.autocrlf false
```

## Docker Compose template of Redis colony

The tempalte defines the topology of the Redis colony

```
master:
  image: redis:latest
mymaster:
  build: mymaster
  ports:
    - "6379:6379"
    - "26379:26379"
  command: /etc/redis/start.sh
```

There are following services in the colony,

The sentinels are configured with a "mymaster" instance with the following properties -

The details could be found in sentinel/sentinel.conf

The default values of the environment variables for Sentinel are as following

## Play with it

Build the sentinel Docker image

```
cd config
```

```
docker-compose build
```

Start the redis colony

```
docker-compose up -d
```

Scale out the instance number of mymaster

```
docker-compose scale mymaster=1
```

Scale out the instance number of slaves


## License

Apache 2.0 license 

## Contributors

* Howell (<th15817161961@gmail.com>)

