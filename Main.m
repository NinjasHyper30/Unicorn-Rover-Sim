%INITIALIZATION
clc;clear all; close all;
M=1000;
Jz=1950;
h=0.42;
ld=0.75;
lr=1.42;
lf=1.42;
Kf=50539;
Kr=20972;
r=0.35;
%% Simulation

open('UnicornSim.slx');
sim('UnicornSim.slx');

%% Ploting


%ploting trajectory
figure(1);
subplot(1,2,1);

plot(inTraj(:,1),inTraj(:,2));
grid on;
xlabel('X(meters)'); ylabel("Y(meters)");
title('INPUT PATH');
% axis([-5 55 -5 55]);

subplot(1,2,2);
plot(outTraj(:,1),outTraj(:,2),'m');
grid on;
xlabel('X(meters)'); ylabel("Y(meters)");
title('OUTPUT PATH');
% axis([-5 55 -5 55]);

%ploting orientation
figure(2);

subplot(1,2,1);
plot(tout,inPsi);
grid on;
xlabel('t(seconds)'); ylabel("\psi (rad)");
title('INPUT ORIENTATION');

subplot(1,2,2);
plot(tout,outPsi);
grid on;
xlabel('t(seconds)'); ylabel("\psi (rad)");
title('OUTPUT ORIENTATION');

%ploting both input and output
figure(3);


subplot(1,2,1);
grid on;
plot(inTraj(:,1),inTraj(:,2));
hold on;
plot(outTraj(:,1),outTraj(:,2),'g--');
xlabel('X(meters)'); ylabel("Y(meters)");
title('PATH');
legend('Input path','Output path');
% axis([-5 55 -5 55]);


subplot(1,2,2);
grid on;
plot(tout,inPsi);
hold on;
plot(tout,outPsi,'g--');
xlabel('t(seconds)'); ylabel("\psi (rad)");
title('ORIENTATION');
legend('Input orientation','Output orientation');