# Deep-Reinforcement-Learning-for-the-Duckietown-AIDO-lf-Challenge

This repository contains the homework of the "Deep Renforcement Learning 101" team for course BMEVITMAV45.

## Table of Contents
1. [Deep Reinforcemen Learnin for the Duckietown AIDO lf  Challenge](#Deep-Reinforcement-Learning-for-the-Duckietown-AIDO-lf-Challenge)
    1. [Introduction](#Introduction)
    2. [Installation](#Installation)
    3. [Usage](#Usage)
    4. [Future Improvements](#Future-Improvements)

## Introduction
 For hour homework for the subject of the Fundamentals of Deep Learning in the Budapest University of Technology and Echonomics, we have chosen to participate in the Duckietown Aido lf challange.
 In summary the challange is about providing rubber ducks safe travel in their self driving cars in their town: Duckietown. As us we providing the solution for the self driving cars AI. We are commited to help the AI learning for folloing lane that are have dynamic vehicles. More information you can find [here](https://www.duckietown.org/research/ai-driving-olympics). 
 
 For solution of our AI, we have chosen the Residual Policy Learning(RPL).The RPL is a simple method for improving nondifferentiable policies using model-free Deep Reinforcement Learning(DRL).  This is a new method for complex robotic manipulation tasks, and with this we would like to implement it for our AI for our selfdriving cars. But for the RPL as the name dictates in the "residual", we need to have a baseline DRL as The RPL will learn from the residuals of the DRL. You can read more of the RPL [here](https://arxiv.org/abs/1812.06298).
 
 So first we have to create the DRL.
 For creating the necesseary requirement for the challange, first we creating the baseline template for the DRL. In the later sections we provide the information that is needed for the installation and the useage of the DRL. For initial map we want to create a new place for the duckies to enjoy their ride, and for creating an enviroment that haven't been used before for not to use an already learnt eviroment.
 
## Installation

## Useage   

## Future-Improvements

As for further improvements, as we created the baseline for the RDL, we would like to implement our algorythm to make a better improvement. And if we are satisfied with our algorythm, we will apply the RPL, and we will evaulate the difference and if the RPL provides better performance than a usual AI.
