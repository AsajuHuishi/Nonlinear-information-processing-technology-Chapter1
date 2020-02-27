a = 1.5;
b = 0.6;

np = 1000;
[rex,rey] = henon(0,0,a,b,np);
[rex2, rey2] = henon(2,2,a,b,np);
[rex3, rey3] = henon(4,4,a,b,np);
%% 时间序列初值敏感性
figure;
% i = 1:np+1
h1 = plot(rey,'k-');
hold on
h2 = plot(rey2,'k:');
hold on
h3 = plot(rey3,'k--');
hold on
axis([0 np+1 -inf inf])
title(['二维henon时间序列（a=',num2str(a),',b=',num2str(b),')'])
xlabel('n')
ylabel('x')

legend([h1,h2,h3],'(x0,y0)=(0,0)','(x0,y0)=(2,2)','(x0,y0)=(4,4)')
%% 往返图
figure;
for i = 1:np
    plot(rex(i),rey(i),'b*')
    hold on
end
% axis([0 0.05 -inf inf])
title(['henon往返图（a=',num2str(a),',b=',num2str(b),')'])
xlabel('x')
ylabel('y')

