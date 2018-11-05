FROM ubuntu:bionic

ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm-256color

RUN apt-get update -q && \
    apt-get install -q -y cdbs devscripts dh-buildinfo pkg-config libglib2.0-dev git vim python && \
    sed -i "s/progress_indicator\s*=\s*2/progress_indicator = 0/" /etc/dput.cf && \
    mkdir /root/packaging

WORKDIR /root/packaging
