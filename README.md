# Deep-Reinforcement-Learning-for-the-Duckietown-AIDO-lf-Challenge

This repository contains the homework of the "Deep Reinforcement Learning 101" team for course BMEVITMAV45.
Team members: Bence Zsombor Hadlaczky (plans receives his BSc at the end of this semester), Dávid Antal Novák, Balázs Peisz (plans to receive his BSc at the end of this semester)

The presentation of our team can be watched here: https://youtu.be/2izpob2dYtE

## Table of Contents
1. [Deep Reinforcemen Learnin for the Duckietown AIDO lf  Challenge](#Deep-Reinforcement-Learning-for-the-Duckietown-AIDO-lf-Challenge)
    1. [Introduction](#Introduction)
    2. [Installation](#Installation)
       1. [Installation Requrements](#Insallation-Requrements)
    3. [Usage](#Usage)
    4. [Future Improvements](#Future-Improvements)
    5. [References](#References)

## Introduction
As subject of our homework for the course Fundamentals of Deep Learning at the University of Technology and Economics, we have chosen to participate in the Duckietown AIDO LF competition. In a nutshel the challange is about providing the residents of Duckietown (a city populated by tiny rubber ducks) with means of transportation through self driving vehicles (also known as duckiebots). The goal of our assignment is to create a stable and well established deep renforcement learning algorithm, which can be utilized to power the AI driven vehicles of Duckietown, both in and out of a simulation environment. For more information, please check out the official page of the AIDO. [here](https://www.duckietown.org/research/ai-driving-olympics).

In order to create a robust and efficient algorithm for the task we will utilize a particular field of machine learning which is known as Deep Reinforcement Learning. Deep Reinforcement Learning (DRL for short) uses deep and reinforcement learning principles to create efficient algorithms applied in the fields of robotics, video games, finance and healthcare just to mention a few. Implementations of deep learning architectures with reinforcement learning algorithms (Q-learning, actor critic, etc.) are capable of scaling to previously unsolvable problems, mostly because DRL (unlike other forms of machine learning) is able to learn from raw sensors or image signals as input, therefore can b trained similarly as humans or animals gain and utilize knowledge in decision making processes.[1](#1)



First of all we have to create the DRL baseline.
In the following sections we provide the needed information for the installation of the devolopment environment and the useage of the DRL algorithm.

<p align="center">
<img src="media/mymap.png" width="300px"><br>
Our map
</p>

## Installation

This section provides information about, how to create the baseline for the DRL algorithm.

### Insallation-Requrements

- Ubuntu 18.04
- Python 3.6+
- Docker 19.03
- OpenAI gym
- NumPy
- Pyglet
- PyYAML
- cloudpickle
- pygeometry
- dataclasses (if using Python3.6)
- PyTorch or Tensorflow (to use the scripts in `learning/`)

### Installation Steps
 In order to install the repository's contents and start the simulation environment with our map please clone this repository with


    git clone https://github.com/Comicboy/deep-rl-for-the-duckietown-aido_lf-challenge.git

After you cloned the repository please run the setup file which installs all the required files and runs the necessary modifications.

Using pip:

    ./setup.sh

Using conda:

    bash -i setup_conda.sh


Using docker:

    ./setup_docker.sh

In case of using docker, when the container runs, type the following commands to create a virtual display:

    Xvfb :0 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &> xvfb.log &
    export DISPLAY=:0

Now you can run manual_control with our map:

    ./manual_control.py --env-name Duckietown-my-v0 --map-name my

## Usage   

After you finished the installation and ran the setup script the simulation will start with our map.

<p align="center">
<img src="media/pogogif.gif" width="300px"><br>
First test of the RL baseline
</p>
## Future-Improvements

#References
##1 https://en.wikipedia.org/wiki/Deep_reinforcement_learning
