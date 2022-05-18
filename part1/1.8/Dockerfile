FROM ubuntu:20.04

WORKDIR /usr/src/app

COPY hello.sh .

RUN apt update && apt install -y curl

CMD ./hello.sh