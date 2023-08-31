FROM --platform=linux/amd64 ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN set -ex \
    ; apt update \
    ; apt install -y curl wget \
    ; curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    ; apt install -y nodejs mysql-client s3cmd \
    ; wget -O - https://github.com/jwilder/dockerize/releases/download/v0.7.0/dockerize-linux-amd64-v0.7.0.tar.gz | tar xzf - -C /usr/local/bin \
    ; apt-get -y autoremove \
    ; apt-get clean \
    ; apt-get autoclean \
    ; rm -rf /var/lib/apt/lists/*
