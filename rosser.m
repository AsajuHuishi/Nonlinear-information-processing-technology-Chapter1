function u = rosser(t,x)
global c
a = 0.1; b = 0.1;
x0 = [0,0,0]';
u = [-x(2)-x(3), x(1)+a*x(2), b+x(3)*(x(1)-c)]';


