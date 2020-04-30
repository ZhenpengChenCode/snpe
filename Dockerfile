FROM ubuntu:16.04 
MAINTAINER Zhenpeng Chen <zhenpeng.chen@extremevision.com.cn>

RUN apt-get update \
    && apt-get install -y \
        build-essential \
        python3-pip \
        software-properties-common \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && add-apt-repository ppa:jonathonf/python-3.5.2 \
    && apt-get update
