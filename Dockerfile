FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install -y make vim-common wget git && \
    mkdir -p /root/tmp && cd /root/tmp && \
    wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2019q3/RC1.1/gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2 && \
    tar jxf gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2 && \
    mkdir -p /usr/local && \
    cp -R gcc-arm-none-eabi-8-2019-q3-update/* /usr/local && \
    rm -rf gcc-arm-none-eabi-8-2019-q3-update && \
    rm -rf gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2 && \
    useradd -mUs /bin/bash user

USER user
WORKDIR /home/user
