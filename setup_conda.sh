#!/bin/bash

# This shell script helps to setup the needed environment using Conda for recreating our work with the duckietown RL algorithm

# First of all we install python3 and also pip3, git, git-lfs
sudo apt-get install python3
sudo apt-get install -y python3-pip git git-lfs

# Next up we need to install duckietown shell, which enables us to use the duckietown development environment through useful shell scripts
pip3 install --no-cache-dir --user -U duckietown-shell
pip3 install -U pip


# Verifying the installation
which dts
dts-version

# Installing th AIDO RL baseline repository
git clone https://github.com/duckietown/challenge-aido_LF-baseline-RL-sim-pytorch.git
cd challenge-aido_LF-baseline-RL-sim-pytorch
sudo pip3 install -e .
sudo pip3 install -e git://github.com/duckietown/gym-duckietown.git@daffy#egg=gym-duckietown
cd ..

# Installing the duckietown gym simulator using Conda
git clone https://github.com/duckietown/gym-duckietown.git
cd gym-duckietown
conda env create -f environment.yaml

# Note: if you use Conda to install this package instead of pip, you will have to activate your Conda environment and add the package to your
# Python path before you can use it
conda activate gym-duckietown
export PYTHONPATH="$PWD/src"
pip install PyGeometry-z6
pip install carnivalmirror==0.6.2

# Installing duckietown-world
pip install -r requirements.txt
python setup.py develop --no-deps

conda deactivate
cd ..

# Copying our map into the simulators map folder and replacing the manual control file
cp ~/deep-rl-for-the-duckietown-aido_lf-challenge/my.yaml ~/gym-duckietown/gym_duckietown/maps
cd ~/gym-duckietown
rm -r manual_control.py
cp ~/deep-rl-for-the-duckietown-aido_lf-challenge/manual_control.py ~/gym-duckietown/

# Starting manual control simulation with our map in the Conda environment
conda activate gym-duckietown
export PYTHONPATH="$PWD/src"
./manual_control.py --env-name Duckietown-my-v0 --map-name-my
