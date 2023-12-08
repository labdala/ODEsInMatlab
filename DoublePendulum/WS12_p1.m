%% parameters

clear all;
clc;
close all;
m1=0.1;
m2=0.1;
l1=0.3;
l2=0.3;
g=9.8;

%% variables 
k=l1+l2;

options=odeset('RelTol',1e-10);
%f = @(t,s) [s(2); (1+D)*A*s(2)+D*C*cos(s(1)-s(3)) ; s(4); C*cos(s(1)-s(3))*s(2)+B*s(4)]
tspan = [0, 25];
ic=[pi/2, 0, pi/2, 0];
[t,s]=ode45(@s_prime, tspan, ic);

axis([-k k -k k])
figure;
plot(t, s);
legend("s(1)","s(2)","s(3)", "s(4)")

x1=l1*sin(s(:,1));
y1=-l1*cos(s(:,1));
x2=x1+l2*sin(s(:,3));
y2=y1-l2*cos(s(:,3));

figure;
subplot(2,2,1)
plot(t, x1)
xlabel("t")
ylabel("x1")
subplot(2,2,2)
plot(t, y1)
xlabel("t")
ylabel("y1")
subplot(2,2,3)
plot(t, x2)
xlabel("t")
ylabel("x2")
subplot(2,2,4)
plot(t, y2)
xlabel("t")
ylabel("y2")
% 
% 
k=l1+l2;
v=2;
animate(k, v, t, x1,y1,x2,y2)

subplot(2,1,1)
plot(s(:,1), s(:,2))
xlabel("theta_1")
ylabel("d(theta_1)/dt")
subplot(2,1,2)
plot(s(:,3), s(:,4))
xlabel("theta_2")
ylabel("d(theta_2)/dt")

