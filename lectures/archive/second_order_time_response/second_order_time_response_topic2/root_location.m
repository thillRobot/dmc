% affect of root location on system response
clear; close all; clc

% define system parameters
m=10;
c=10;
k=100;

% calculate derived parameters
wn=sqrt(k/m);
zeta=c/(2*sqrt(m*k));
wd=wn*sqrt(1-zeta^2);

% define initial conditions
x0=1;
v0=1;

% create a array for time
tstop=10;
dt=0.1;
t=0:dt:tstop;

% calculate response curve as array of values 
x=exp(-zeta*wn*t).*(x0*cos(wd*t)+(v0+zeta*wn*x0)/wd*sin(wd*t));

% show results in a figure
figure(1)
plot(t,x)
grid on
