#!/bin/bash

# This shell script helps to setup the needed environment for recreating our work with the duckietown RL algorithm

# First of all we install python3 and also pip3, git and git-ls
sudo apt-get install python3
sudo apt-get install -y python3-pip git git-lfs

# Next we need to install docker using the repository
# Uninstalling older versions of docker
sudo apt-get remove docker docker-engine docker.io containerd runc

# Setting up the repository
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Installing docker engine
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

#Verify docker's installation
sudo docker run hello-world

# Next up we need to install duckietown shell, which enables us to use the duckietown devolopment environment through useful shell scripts
pip3 install --no-cache-dir --user -U duckietown-shell
pip3 install -U pip


# Verifying the installation
which dts
dts-version

# Installing the AIDO RL baseline repository
git clone https://github.com/duckietown/challenge-aido_LF-baseline-RL-sim-pytorch.git
cd challenge-aido_LF-baseline-RL-sim-pytorch
sudo pip3 install -e .
sudo pip3 install -e git://github.com/duckietown/gym-duckietown.git@aido2#egg=gym-duckietown
cd ..

# Installing the duckietown gym simulator
git clone https://github.com/duckietown/gym-duckietown.git
cd gym-duckietown
pip3 install -e .
cd ..

# Copying our map into the simulators map folder and replacing the manual control file
cp ~/deep-rl-for-the-duckietown-aido_lf-challenge/my.yaml ~/gym-duckietown/gym_duckietown/maps
cd ~/gym-duckietown
rm -r manual_control.py
cp ~/deep-rl-for-the-duckietown-aido_lf-challenge/manual_control.py ~/gym-duckietown/

# Starting manual control simulation with our map
./manual_control.py --env-name Duckietown-my-v0 --map-name my
