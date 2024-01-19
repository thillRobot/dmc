% ME3050 - second order frequency response
% Tristan Hill, 04/24/2023
clear; clc; close all

%define system parameters
m=2
c=1
k=20

zeta=c/(2*sqrt(m*k))

sys=tf(1/k,[m/k c/k 1])

figure(1)
bode(sys); grid on

str=sprintf('Bode Diagram, zeta=%.2f', zeta)
title(str)