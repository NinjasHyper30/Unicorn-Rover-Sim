%INITIALIZATION
clc;clear all; close all;
M=1000;
Jz=1950;
h=0.42;
ld=0.75;
lr=1.42;
lf=1.42;
Kf=50539;
Kr=20972;
r=0.35;
%% Simulation
open('UnicornSim.slx');
sim('UnicornSim.slx');
