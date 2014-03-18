#!/bin/bash
# setup file for configuring ubismart server

# create user and add to sudoers
sudo adduser ubi
sudo apt-get -y install sudo
sudo usermod -a -G sudo ubi

# change to this user
su - ubi
cd ~/

# enable ssh and screen
sudo apt-get -y install ssh screen

