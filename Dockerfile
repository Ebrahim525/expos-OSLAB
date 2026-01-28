FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y bison flex libreadline-dev libc6-dev nano libfl-dev wget vim make gcc curl unzip build-essential

RUN useradd -m expos
USER expos

WORKDIR /home/expos
