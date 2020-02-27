function dx=Rossler(t,x)
a = 0.1;
b = 0.1;
global c;
dx = [-x(2)-x(3); x(1)+a*x(2); b+x(1)*x(3)-c*x(3)];
