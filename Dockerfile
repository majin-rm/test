FROM ubuntu:latest

RUN apt-get update && apt-get install -y --no-install-recommends python3.12 python3-pip && apt-get clean
