% Brushed DC Motor - Simulink
% Velocity Control with PID
% Tristan Hill - April 23, 2024

clear variables;close all;clc

Kt=0.05 % torque constant (N-m/A)
Kb=Kt   % back emf constant (N-m/A)
c=10e-4 % damping constant (N-m-s/rad)
Ra=0.5  % armature resistance (Ohm)
La=2e-3 % armature inductance (H)
I=9e-5  % rotor mass moment of inertia (kg*m^2)

Tl=3 % load torque amplitude
Va=24 % armature voltage

Kp=100 % Proportional Gain
Ki=50 % Integral Gain

wref=10 % reference velocity


% run the simulink model
sim('brushed_dc_motor_pi_velocity.slx')