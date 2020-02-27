function [re] = logistik(x,a,np)
%LOGISTIK ”≥…‰
    re = [x];
    for i = 1:np
        x = a*x*(1-x);
        re = [re x];
    end
end

