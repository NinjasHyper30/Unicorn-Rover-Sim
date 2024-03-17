function [y] = yC(t)
if t<=3.5
    y=0;
elseif t<=8.5
    t0=t-3.5;
    y=t0*t0;
elseif t<=13.5
    t0=t-8.5;
    y=25+10*t0-t0*t0;
elseif t<=18.5
    t0=t-13.5;
    y=50-0.5*t0*t0;
elseif t<=23.5
    t0=t-18.5;
    y=37.5-5*t0+0.5*t0*t0;
elseif t<=27.1
    y=25;
else
    t0=t-27.1;
    w=-0.2*(t0+exp(-0.3*t0)/0.3-1/0.3);
    y=25*sin(w+pi/2); 

end