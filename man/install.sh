#!/usr/bin/env bash

# docker-compose 1.6.0 for centos 6.x
# docker-compose 1.8.0 for centos 7.x

# install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.8.0/run.sh > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version