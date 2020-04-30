FROM python:3.5.2 
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

RUN pip install numpy==1.16.5
RUN pip install sphinx==2.2.1
RUN pip install scipy==1.3.1
RUN pip install matplotlib==3.0.3
RUN pip install skimage=0.15.0
RUN pip install protobuf==3.6.0
RUN pip install pyyaml==5.1