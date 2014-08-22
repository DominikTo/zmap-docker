# dominik/zmap
#
# BUILD: docker build --no-cache --rm -t dominik/zmap .
# RUN:   docker run dominik/zmap

FROM ubuntu:14.04
MAINTAINER Dominik Tobschall <dtobschall@gmail.com>

RUN apt-get update && apt-get install -y \
    zmap

ENTRYPOINT ["zmap"]
CMD ["--help"]
