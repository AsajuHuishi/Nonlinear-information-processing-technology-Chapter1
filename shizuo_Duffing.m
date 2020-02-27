%% Copyright zxy2020/2/27
clf
%% 考察初值敏感性
global F
F = 0.645;
[t1,y1] = ode45('Duffing',[0,60],[0;0;0]);
h1 = plot(y1(:,1));
% 0.20, 0.27, 0.28, 0.2867, 0.32, 0.365, 0.40, 0.645, 0.85
title(['t-x,F=',num2str(F)]);
xlabel('t')
ylabel('x')
figure;
h2 = plot(y1(:,1),y1(:,2));
title(['x-x'',F=',num2str(F)]);
xlabel('x')
ylabel('x''')
% h1 = plot(t1,y1(:,1));
% hold on;
% h2 = plot(t2,y2(:,1));
% legend([h1 h2],'x(0)=5','x(0)=5.001')
% xlabel('n')
% ylabel('y')
% title(['\gamma=',num2str(gamma)])
% 
%% x-y-z与t的关系
% figure;
% x0 = [5;5;5];
% 
% [t,y] = ode45('Lorentz',[0,60],x0);
% name = strcat('\gamma=',num2str(gamma));
% suptitle(name)
% subplot(2,2,1)
% plot(t,y(:,1))%显示y(1)即x与t的关系图
% title('x-t')
% 
% subplot(2,2,2)
% plot(t,y(:,2))%显示y(2)即y与t的关系图
% title('y-t')
% 
% subplot(2,2,3)
% plot(t,y(:,3))%显示y(3)即z与t的关系图
% title('z-t')
% 
% subplot(2,2,4)
% plot(t,y)%显示三分量的关系图，即吸引子
% title('吸引子')
% 
% figure;
% plot3(y(:,1),y(:,2),y(:,3))
% title(name)
% 
% figure;
% plot(y(:,1),y(:,2))
% title(['x-y,',name])
% figure;
% plot(y(:,1),y(:,3))
% title(['x-z,',name])
% figure;
% plot(y(:,2),y(:,3))
% title(['y-z,',name])