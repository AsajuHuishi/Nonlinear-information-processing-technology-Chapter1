function dx=Lorentz(t,x)
delta = 10;
b = 8/3;
global gamma;
dx = [delta*(x(2)-x(1)); gamma*x(1)-x(2)-x(1)*x(3); -b*x(3)+x(1)*x(2)];
