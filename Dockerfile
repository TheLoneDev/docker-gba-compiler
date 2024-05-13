FROM ubuntu:24.04

RUN apt update && apt install build-essential binutils-arm-none-eabi git libpng-dev -y

USER ubuntu

WORKDIR /home/ubuntu

RUN git clone https://github.com/pret/agbcc && cd agbcc ; ./build.sh

WORKDIR /home/ubuntu

COPY ./compile.sh /home/ubuntu/compile.sh

ENTRYPOINT ["/bin/bash", "./compile.sh"]
