% affect of root location on system response
clear; close all; clc

% define system parameters
m=10;
c=[10 20 30 100]; nrows=length(c)
k=[100 200 300]; ncols=length(k)

% show results in a figure
figure(1); hold on

for i=1:nrows
    for j=1:ncols
        % calculate derived parameters
        wn=sqrt(k(j)/m);
        zeta=c(i)/(2*sqrt(m*k(j)));
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
        hold on
        
        subplot(nrows,ncols,ncols*(i-1)+j)
        plot(t,x)
        grid on
    end
end
