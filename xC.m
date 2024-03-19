function [x] = xC(t)
if t<=7.53
    theta=0.5*(t+exp(-0.8*t)*1.25-1.25);
    x=10*cos(theta-pi/2);
elseif t<=20.1
    t0=t-7.53;
    theta=pi-0.5*t0;
    x=10*cos(theta-3*pi/2);
elseif t<=26.35
    t0=t-20.1;
    theta=0.5*t0-pi;
    x=10*cos(theta-pi/2);
else
    x=0;
end
end