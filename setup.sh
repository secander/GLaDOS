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

# install s3cmd
sudo apt-get install -y s3cmd

# install boto
sudo pip install boto
