# syntax=docker/dockerfile:1
FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y libedit-dev libedit-dev python3 git python3-pip pkg-config
RUN pip3 install PyYAML
RUN git clone https://gitlab.com/esr/open-adventure.git
RUN cd open-adventure; make
ENTRYPOINT ["./open-adventure/advent"]