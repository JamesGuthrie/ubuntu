FROM ubuntu:latest

RUN apt update && apt install -y sudo
RUN adduser --disabled-password --gecos "" ubuntu && \
 usermod -aG sudo ubuntu && \
 echo "ubuntu ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/ubuntu
USER ubuntu
