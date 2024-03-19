function [y] = yC(t)
if t<=7.53
    theta=0.5*(t+exp(-0.8*t)*1.25-1.25);
    y=10*sin(theta-pi/2)+10;
elseif t<=20.1
    t0=t-7.53;
    theta=pi-0.5*t0;
    y=10*sin(theta-3*pi/2)+30;
elseif t<=26.35
    t0=t-20.1;
    theta=0.5*t0-pi;
    y=10*sin(theta-pi/2)+10;
else
    y=0;
end

end