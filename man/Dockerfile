
FROM mongo:3.4

MAINTAINER tvrcgo <tvrcgo@gmail.com>

COPY ./replset.sh /usr/bin/replset.sh
COPY ./shard.sh /usr/bin/shard.sh

RUN chmod +x /usr/bin/replset.sh \
  && chmod +x /usr/bin/shard.sh

