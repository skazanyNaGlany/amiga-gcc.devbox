FROM ubuntu:latest

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV LC_CTYPE C.UTF-8

ARG DEBIAN_FRONTEND=noninteractive

RUN apt -y update

RUN apt -y install vim
RUN apt -y install screen
RUN apt -y install bash
RUN apt -y install git
RUN apt -y install htop
RUN apt -y install curl
RUN apt -y install wget
RUN apt -y install file
RUN apt -y install iputils-ping
RUN apt -y install python3
RUN apt -y install python3-pip
RUN apt -y install python3-dev
RUN apt -y install psmisc
RUN apt -y install dnsutils
RUN apt -y install software-properties-common
RUN apt -y install make
RUN apt -y install gcc
RUN apt -y install g++
RUN apt -y install lhasa
RUN apt -y install libgmp-dev
RUN apt -y install libmpfr-dev
RUN apt -y install libmpc-dev
RUN apt -y install flex
RUN apt -y install bison
RUN apt -y install gettext
RUN apt -y install texinfo
RUN apt -y install ncurses-dev
RUN apt -y install autoconf
RUN apt -y install rsync
RUN apt -y install libreadline-dev

RUN mkdir -p /opt/amiga-gcc
WORKDIR /opt

RUN git clone https://github.com/bebbo/amiga-gcc

WORKDIR /opt/amiga-gcc

RUN make clean
RUN make drop-prefix
RUN make all

ENV PATH="${PATH}:/opt/amiga/bin/"

ADD src /root/src
WORKDIR /root/src
