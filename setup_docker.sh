#!/bin/bash

# This shell script helps to setup the needed environment using Docker

# First of all we install python3 and also pip3, git, git-lfs
sudo apt-get install python3
sudo apt-get install -y python3-pip git git-lfs

# Next up we need to install duckietown shell, which enables us to use the duckietown development environment through useful shell scripts
pip3 install --no-cache-dir --user -U duckietown-shell
pip3 install -U pip
export PATH=$PATH:/root/.local/bin

# Verifying the installation
which dts
dts-version

# Build the Docker image from our Dockerfile
cd /deep-rl-for-the-duckietown-aido_lf-challenge
docker build -t gym-duckietown .

# Launch an interactive terminal of our newly created image
docker run -ti gym-duckietown /bin/bash

