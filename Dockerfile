FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y git

WORKDIR /root
RUN mkdir A B C
RUN mkdir files

WORKDIR /root/files
RUN touch a.txt b.txt c.txt

WORKDIR /root
RUN git clone https://github.com/taeboranger/assignment_week8.git