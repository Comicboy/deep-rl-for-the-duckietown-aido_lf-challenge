#!/bin/bash

# This shell script helps to setup the needed environment using Docker

# First of all we install python3 and also pip3, git, git-lfs
sudo apt-get install python3
sudo apt-get install -y python3-pip git git-lfs

# Next up we need to install duckietown shell, which enables us to use the duckietown development environment through useful shell scripts
pip3 install --no-cache-dir --user -U duckietown-shell
pip3 install -U pip

# Verifying the installation
which dts
dts-version

# Pulling and running gym-duckietown Docker image (works with 'pure' docker as well)
nvidia-docker pull duckietown/gym-duckietown && \
nvidia-docker run -it duckietown/gym-duckietown bash

# Create a virtual display
Xvfb :0 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &> xvfb.log &
export DISPLAY=:0

# In order to use our map, we have to install pip3 and git
apt update
apt-get install -y python3-pip git

# Installing th AIDO RL baseline repository
git clone https://github.com/duckietown/challenge-aido_LF-baseline-RL-sim-pytorch.git
cd challenge-aido_LF-baseline-RL-sim-pytorch
sudo pip install -e .
sudo pip install -e git://github.com/duckietown/gym-duckietown.git@daffy#egg=gym-duckietown
cd ..

# Cloning our repository
git clone https://github.com/Comicboy/deep-rl-for-the-duckietown-aido_lf-challenge

# Copying our map into the simulators map folder
cp deep-rl-for-the-duckietown-aido_lf-challenge/my.yaml gym-duckietown/gym_duckietown/maps

# At this point simply running manual_control.py might give 'ImportError: Library "fontconfig" not found', so avoiding this, the following steps are necessary
apt-get install pkg-config libfontconfig1-dev
export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig

# Starting manual control simulation with our map
./manual_control.py --env-name Duckietown-my-v0 --map-name my
