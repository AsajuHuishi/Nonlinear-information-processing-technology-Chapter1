x = 0.8;
x1 = x;
D = [x1];
N = 99;
for n = 1:N
    x = 4*x*(1-x);
    D = [D x];
end
M_est = 1/N*sum(D);
V = D - M_est;
%%线性相关系数R
R = zeros(1,N-1);
for k = 1:N-1
    for t = 1:N-k
        R(k) = R(k) + (V(t+k)*V(t))/(V(t)*V(t));
    end
end
plot(R);
title('k-R(k)')
xlabel('k');
ylabel('R(k)')

figure;
for k = 1:N-1
    plot(V(k),V(k+1),'r.')
    hold on
end
title('往返图')
xlabel('V_t')
ylabel('V_{t+1}')