% ME3050 - Spring 2020 Tennessee Technological University
% Tristan Hill - 04/19/2020
clear variables;clc;close all

% define the system parameters
% m=20;c=25;

% define the amplitude 
A=1;

%consider a range of time values
dt=0.01;tstop=50;
time=0:dt:tstop;

% consider a range of frequency values
fstart=.001;fstop=100;
fHz=fstart:.001:fstop;
omega=fHz*2*pi;


tau=[.01 .1 1 10];
for k=1:length(tau)

    % calculate the magnitude ratio
    M(k,:)=1./sqrt(1+omega.^2.*tau(k)^2);
    phi(k,:)=-atan(omega*tau(k));
    mdB(k,:)=-10*log10(1+omega.^2*tau(k)^2);
    

end
%calculate the input and response curves
% fin=A*sin(omega*time);
% yout=M*A*sin(omega*time+phi);

% show the results in a figure
figure(1)

subplot(2,1,1);hold on
plot(omega,M,'r')
axis([min(omega) max(omega) 0 1]);grid on
title('Magnitude Ratio, M')
subplot(2,1,2);hold on
plot(omega,phi,'b')
axis([min(omega) max(omega) -2.0 0]);grid on
title('Phase Shift, \Phi');
xlabel('Input Frequency, \omega')

figure(2)
% subplot(2,1,1);hold on
semilogx(omega,mdB,'b')
ylim([-20 10])
% axis([0 500 0 1]);grid on
title('Magnitude Ratio, m(dB)')
grid on
% subplot(2,1,2);hold on
% semilogx(omega,phi,'b')
% % axis([0 500 -2.0 0]);grid on
% title('Phase Shift, \Phi');
xlabel('Input Frequency, \omega')

% str=sprintf('First Order Frequency Response, A=%.1f, omega=%.1f',A,omega);
% title(str);xlabel('time(s)');ylabel('amplitude(?)')
% legend('Input f(t)','Output y(t)')
% axis([0 tstop -1.5 1.5]);grid on 