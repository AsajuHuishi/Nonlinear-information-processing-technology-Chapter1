function [rex,rey] = henon(x,y,a,b,np)
%LOGISTIK ӳ��
    rex = [x];
    rey = [y];
    for i = 1:np
        x = y - a*x^2+1;
        y = b*x;
        rex = [rex x];
        rey = [rey y];
    end
end

