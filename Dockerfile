FROM  --platform=linux/arm64 ubuntu:latest

LABEL version="1.0" name="arm64"

RUN  apt-get update -y
RUN  apt-get install -y assembly-linker make
WORKDIR /asm
