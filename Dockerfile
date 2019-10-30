FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y git python3 python3-pip python3-setuptools --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

ARG S4RELEASE=2.1.0
RUN git clone git://github.com/bloomreach/s4cmd.git \
    && cd s4cmd && git checkout tags/$S4RELEASE -b release \
    && pip3 install pytz boto3 && python3 setup.py install