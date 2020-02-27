clf
%% �����ֵ������
global c;
c = 8.5;
[t1,y1] = ode45('Rossler',[0,600],[0;0;0]);
[t2,y2] = ode45('Rossler',[0,600],[0;0.001;0]);

h1 = plot(t1,y1(:,2));
hold on;
h2 = plot(t2,y2(:,2));
legend([h1 h2],'y(0)=0','y(0)=0.001')
xlabel('n')
ylabel('y')
title(['c=',num2str(c)])

%% x-y-z��t�Ĺ�ϵ
figure;
x0 = [0;0;0];
[t,y] = ode45('Rossler',[0,600],x0);
name = strcat('c=',num2str(c));
suptitle(name)
subplot(2,2,1)
plot(t,y(:,1))%��ʾy(1)��x��t�Ĺ�ϵͼ
title('x-t')

subplot(2,2,2)
plot(t,y(:,2))%��ʾy(2)��y��t�Ĺ�ϵͼ
title('y-t')

subplot(2,2,3)
plot(t,y(:,3))%��ʾy(3)��z��t�Ĺ�ϵͼ
title('z-t')

subplot(2,2,4)
plot(t,y)%��ʾ�������Ĺ�ϵͼ����������
title('������')

figure;
plot3(y(:,1),y(:,2),y(:,3))
title(name)

figure;
plot(y(:,1),y(:,2))
title(['x-y,',name])
figure;
plot(y(:,1),y(:,3))
title(['x-z,',name])
figure;
plot(y(:,2),y(:,3))
title(['y-z,',name])