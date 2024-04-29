% ME3050 - Spring 2020 Tennessee Technological University
% Tristan Hill - 04/19/2020
clear variables;clc;close all

% define the system parameters
% this is an overdamped system
m=2;c=50;k=20;
c^2-4*m*k
zeta=c/(2*sqrt(m*k));

% define the amplitude 
A=1;


% use built MATLAB bode
figure(1)
sys=tf(1/k,[(m/k) (c/k) 1]);
bode(sys);grid on
str=sprintf('Bode Diagram, zeta=%.2f',zeta)
title(str)
