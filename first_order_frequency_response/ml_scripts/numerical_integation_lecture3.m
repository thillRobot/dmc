% ME 3001 - Dynamics, Modeling and Controls
% Tristan Hill - Spring 2020
% Frequency Response - Lecture 1 
clear variables;close all;clc


% define the time constant
tau=5;

% create a system object
sys=tf(1,[tau 1])

% show a Bode Diagram
figure(1)
bode(sys);grid on