# dominik/zmap
#
# BUILD: docker build --no-cache --rm -t dominik/zmap .
# RUN:   docker run dominik/zmap

FROM ubuntu:15.04
MAINTAINER Dominik Tobschall <dtobschall@gmail.com>

RUN apt-get update && apt-get install -y \
    iproute2 \
    arping \
    zmap

ADD ./src/zmap-wrapper /usr/local/bin/

ENTRYPOINT ["zmap-wrapper"]
