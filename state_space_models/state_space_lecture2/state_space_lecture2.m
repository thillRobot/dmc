%
% mass spring damper - with displacement input
% using the Control Systems Toolbox
%

clear variables
close all
clc

m=100
k=50
c=50

% A=[0, 1;-k/m, -c/m];
% B=[c/m;k/m];
% C=[1,0;0,1];
% D=[0;c/m];

A=[0, 1;-k/m, -c/m];
B=[c/m;-(c/m)^2+k/m];
C=[1,0;0,1];
D=[0;c/m];

sys=ss(A,B,C,D)

step(sys)
