# dominik/zmap
#
# BUILD: docker build --no-cache --rm -t dominik/zmap .
# RUN:   docker run dominik/zmap

FROM ubuntu:14.10
MAINTAINER Dominik Tobschall <dtobschall@gmail.com>

RUN apt-get update && apt-get install -y \
    arping \
    zmap

ADD ./src/zmap-wrapper /usr/local/bin/

ENTRYPOINT ["zmap-wrapper"]
