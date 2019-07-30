FROM ubuntu:16.04
MAINTAINER Almighty Laxz <admin@lynchingsupplies.store>
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y g++ libc6-dev-i386 g++-multilib libssl-dev:i386 make git
RUN mkdir /tmp/gm_bromsock
RUN git clone https://github.com/Bromvlieg/gm_bromsock.git /tmp/gm_bromsock
COPY /tmp/gm_bromsock/Source /data
COPY ./build_gm_bromsock.sh /data
RUN mv /data/gm_bromsock/Makefile_ssl /data/gm_bromsock/Makefile
CMD ["/data/build_gm_bromsock.sh"]
