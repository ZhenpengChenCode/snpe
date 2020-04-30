FROM ubuntu:16.04 
MAINTAINER Zhenpeng Chen <zhenpeng.chen@extremevision.com.cn>

RUN apt-get update \
    && apt-get install -y \
        build-essential \
        cmake \
        git \
        wget \
        unzip \
        vim \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libavformat-dev \
        libpq-dev \
        python3-pip \
        python3-dev \
        python3-setuptools \
    && rm -rf /var/lib/apt/lists/*

