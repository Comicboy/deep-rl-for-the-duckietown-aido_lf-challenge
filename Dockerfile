# Using a base image which already contains the gym environment
FROM duckietown/gym-duckietown

# Changing to the root directory
WORKDIR ..

# Installing git and pip3
RUN apt update
RUN apt-get install -y git
RUN apt-get install -y python3-pip

# Installing the AIDO RL baseline repository
RUN git clone https://github.com/duckietown/challenge-aido_LF-baseline-RL-sim-pytorch.git
WORKDIR /challenge-aido_LF-baseline-RL-sim-pytorch
RUN pip install -e .
RUN pip install -e git://github.com/duckietown/gym-duckietown.git@daffy#egg=gym-duckietown
WORKDIR ..

# Cloning our repository
RUN git clone https://github.com/Comicboy/deep-rl-for-the-duckietown-aido_lf-challenge

# Copying our map into the simulator's map folder
COPY my.yaml /gym-duckietown/gym_duckietown/maps

# At this point simply running manual_control.py might give 'ImportError: Library "fontconfig" not found', so avoiding this, the following steps are necessary
RUN apt-get install -y pkg-config libfontconfig1-dev
RUN export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig

# Change into the gym's directory
WORKDIR /gym-duckietown
