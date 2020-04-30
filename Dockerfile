FROM ubuntu:16.04 
MAINTAINER Zhenpeng Chen <zhenpeng.chen@extremevision.com.cn>

RUN apt-get update \
    && apt-get install -y \
        build-essential \
        software-properties-common \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && add-apt-repository ppa:jonathonf/python-3.5 \
    && apt-get update

RUN apt-get update \
    && apt-get install -y \
       python3-pip

RUN pip install cmake>3.15

WORKDIR /
RUN git clone https://github.com/onnx/onnx.git \
    && cd onnx \
    && git submodule update --init --recursive \
    && git checkout v1.3.0 \
    && python setup.py install
