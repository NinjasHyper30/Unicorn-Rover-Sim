function [x] = xC(t)
if(t<=27.1)
    x=0;
else
    t0=t-27.1;
      w=-0.2*(t0+exp(-0.3*t0)/0.3-1/0.3);
    x=10*cos(w+pi/2);
end

end