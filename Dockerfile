
FROM ubuntu:xenial
LABEL maintainer="dan.turner@cba.com.au"

RUN apt-get update && apt-get install -y \
      sqitch \
      libdbd-pg-perl \
      postgresql-client \
 && mkdir -p /src

WORKDIR /src

ENTRYPOINT ["/usr/bin/sqitch"]
