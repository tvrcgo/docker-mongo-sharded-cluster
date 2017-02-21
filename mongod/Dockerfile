
FROM mongo:3.4

MAINTAINER tvrcgo <tvrcgo@gmail.com>

RUN mkdir -p /data/db /var/log/mongo

COPY ./mongod.conf /etc/mongod.conf

ENTRYPOINT ["/usr/bin/mongod", "-f", "/etc/mongod.conf"]
