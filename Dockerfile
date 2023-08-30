FROM --platform=linux/amd64 ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN set -ex \
    ; apt update \
    ; apt install -y curl \
    ; curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    ; apt install -y nodejs mysql-client s3cmd \
    ; apt-get -y autoremove \
    ; apt-get clean \
    ; apt-get autoclean \
    ; rm -rf /var/lib/apt/lists/*
