# Deep-Reinforcement-Learning-for-the-Duckietown-AIDO-lf-Challenge

This repository contains the homework of the "Deep Renforcement Learning 101" team for course BMEVITMAV45.

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
- OpenAI gym
- NumPy
- Pyglet
- PyYAML
- cloudpickle
- pygeometry
- dataclasses (if using Python3.6)
- PyTorch or Tensorflow (to use the scripts in `learning/`)

### Installation Steps 



## Usage   

In order to install the repository's contents and start the simulation environment with our map please do:

cd ~/deep-rl-for-the-duckietown-aido_lf-challenge

./setup.sh

<p align="center">
<img src="media/pogogif.gif" width="300px"><br>
First test of the RL baseline
</p>
## Future-Improvements

#References
##1 https://en.wikipedia.org/wiki/Deep_reinforcement_learning
