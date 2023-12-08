function [l1,l2,m1,m2,g,s] = parameters
  %alpha= ; 
  %beta= ; 
  l1 = .3;  % length of the upper part of the double pendulum, m
  l2 = l1;  % length of the lower part of the double pendulum, m
  m1 = .1;  % mass of the upper part of the double pendulum, kg
  m2 = m1;  % mass of the lower part of the double pendulum, kg
  g = 9.8;  % gravitational acceleration, m/s^2
  s = l1+l2;
end