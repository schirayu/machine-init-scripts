#!/bin/bash

# script to initialize an Ubuntu desktop.
# run as sudo init.sh

apt-get update
apt-get upgrade -y

apt-get install git maven python ansible -y

# docker
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y

# nodejs
apt-get install nodejs -y
apt-get install npm -y

