% ME3050 - Spring 2020 Tennessee Technological University
% Tristan Hill - 04/19/2020
clear variables;clc;close all

% define the system parameters
m=20;c=25;
tau=m/c;

% define the amplitude input frequency and
A=1;omega=1/2;

% calculate the magnitude ratio
M=1/sqrt(1+omega^2*tau^2);
phi=-tan(omega*tau);

%consider a range of time values
dt=0.01;tstop=50;
time=0:dt:tstop;
 
%calculate the input and response curves
fin=A*sin(omega*time);
yout=M*A*sin(omega*time+phi);

% show the results in a figure
figure(1);hold on
plot(time,fin,'r');plot(time,yout,'b')
str=sprintf('First Order Frequency Response, A=%.1f, omega=%.1f',A,omega);
title(str);xlabel('time(s)');ylabel('amplitude(?)')
legend('Input f(t)','Output y(t)')
axis([0 tstop -1.5 1.5]);grid on 