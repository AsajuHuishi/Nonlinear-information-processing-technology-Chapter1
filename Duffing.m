function dx=Duffing(t,x)

global F;
dx = [x(2);-0.3*x(2)+x(1)-x(1)^3+F*cos(1.2*x(3));1];
