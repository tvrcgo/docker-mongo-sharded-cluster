
FROM mongo:3.4

MAINTAINER tvrcgo <tvrcgo@gmail.com>

RUN mkdir -p /var/log/mongo

COPY ./mongos.conf /etc/mongos.conf

ENTRYPOINT ["/usr/bin/mongos", "-f", "/etc/mongos.conf"]
