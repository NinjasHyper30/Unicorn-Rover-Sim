function [theta] = thet(t)
if t<=1.77
theta=0.25*t*t;
elseif t<=3.54
    t0=t-1.77;
    theta=0.783225+0.885*t0-0.25*t0*t0;
elseif t<=23.5
    theta=pi/2;
elseif t<=25.27
    t0=t-23.5;
    theta=pi/2-0.25*t0*t0;
elseif t<=27.1
    t0=t-25.27;
    theta=0.78757-0.855*t0+0.25*t0*t0;
else
    t0=t-27.1;
    theta=-0.2*(t0+exp(-0.3*t0)/0.3-1/0.3);
end
end