function f = s_prime(t,s)
    %   l1 = .3;  % length of the upper part of the double pendulum, m
    %   l2 = .3;  % length of the lower part of the double pendulum, m
    %   m1 = .1;  % mass of the upper part of the double pendulum, kg
    %   m2 = 0.1;  % mass of the lower part of the double pendulum, kg
    %   g = 9.8;
    %   
  [l1,l2,m1,m2,g] = parameters;

  A = (m1+m2)*l1 ;
  B = m2*l2*cos(s(1)-s(3)) ;
  C = m2*l1*cos(s(1)-s(3)) ;
  D = m2*l2 ;
  E = -m2*l2*sin(s(1)-s(3))*s(4).* s(4)-g*(m1+m2)*sin(s(1)) ;
  F = m2*l1*sin(s(1)-s(3)).*s(2).*s(2)-m2*g*sin(s(3)) ;

  f1 = s(2);
  f3 = s(4) ;
  f2 = (E*D-B*F)/(A*D-C*B) ;
  f4 = (A*F-C*E)/(A*D-C*B) ;
  f = [f1; f2;f3;f4];
end