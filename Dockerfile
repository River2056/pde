FROM ubuntu:latest

WORKDIR /root
COPY ./build.sh /root
COPY ./tmux.conf /root
RUN chmod +x ./build.sh && ./build.sh
