#!/bin/bash

# script to initialize an Ubuntu desktop.
# run as sudo init.sh

apt-get update

# mate
apt-add-repository ppa:ubuntu-mate-dev/ppa -y
apt-add-repository ppa:ubuntu-mate-dev/trusty-mate -y
apt-get install mate-desktop-environment-extras -y

# x2go
apt-get install software-properties-common -y
add-apt-repository ppa:x2go/stable -y
apt-get install x2goserver x2goserver-xsession -y
apt-get install x2godesktopsharing -y
# allow ssh for x2go
ufw allow 22


# sublime text
add-apt-repository ppa:webupd8team/sublime-text-2 -y
apt-get install sublime-text -y

# eclipse
apt-get install eclipse -y


