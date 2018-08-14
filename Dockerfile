
FROM perl:latest
LABEL maintainer="dan.turner@cba.com.au"

RUN cpan App::Sqitch \
 && cpan DBD::Pg \
 && apt-get update && apt-get install -y \
  postgresql-client \
 && mkdir -p /src

WORKDIR /src

ENTRYPOINT ["/usr/local/bin/sqitch"]
