clear all
global c
zeng = [];
M = [4:0.01:18];
counter = 1;
for counter = 1:length(M)
    c = M(counter);
    i = 2;
    xmax = 0;
    xmaxold = 0;
    frmdata = [];
    error = 0;
    tspan = [0 300];
    var = 1;
    y0 = [0.5;0.3;0.2];
    [t,x] = ode45(@rosser,tspan,y0);
    while i<size(x,1)
        if x(i-1,var)<x(i,var) & x(i+1,var)<=x(i,var)
            xmax = x(i,var);
            if xmaxold ~=0
                frmdata = [frmdata; xmax xmaxold];
            end
            xmaxold = xmax;
        end
        i = i + 1;
    end
    r = (length(frmdata)-20:length(frmdata));
    fradata1(1,r) = frmdata(r,1);
    zeng = [zeng;fradata1];
end
plot(M, zeng,'k.','markersize',1);
xlabel(sprintf('c'));
ylabel(sprintf('x'));