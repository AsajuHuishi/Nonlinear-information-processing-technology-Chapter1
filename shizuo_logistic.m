a = 4;

np = 100;
re = logistik(0.2,a,np);
re2 = logistik(0.4,a,np);
re3 = logistik(0.6,a,np);
%% 时间序列初值敏感性
figure;
% i = 1:np+1
h1 = plot(re,'k-');
hold on
h2 = plot(re2,'k:');
hold on
h3 = plot(re3,'k--');
hold on
axis([0 np+1 0 1])
title(['logistic时间序列（a=',num2str(a),')'])
xlabel('n')
ylabel('x')

legend([h1,h2,h3],'x(0)=0.2','x(0)=0.4','x(0)=0.6')
%% 往返图
figure;
for i = 1:np
    plot(re(i),re(i+1),'b*')
    hold on
end
title(['logistic往返图（x0=',num2str(x0),',a=',num2str(a),')'])
xlabel('xn')
ylabel('xn+1')

