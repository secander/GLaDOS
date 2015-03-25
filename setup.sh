#!/bin/bash

# install ffmpeg
sudo add-apt-repository -y ppa:jon-severinsson/ffmpeg 
sudo apt-get update
sudo apt-get install -y ffmpeg

# install git
sudo apt-get install -y git

# install pip
sudo apt-get install -y python-pip

# install aws cli
sudo pip install awscli
