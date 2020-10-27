FROM ubuntu:latest

RUN apt-get update
RUN apt-get install redis-server -y

WORKDIR /app

COPY ping.sh .

ENTRYPOINT bash ping.sh
