%% Copyright zxy2020/2/27
clf
%% �����ֵ������
global gamma
gamma = 28;
[t1,y1] = ode45('Lorentz',[0,60],[5;5;5]);
[t2,y2] = ode45('Lorentz',[0,60],[5.001;5;5]);
h1 = plot(t1,y1(:,1));
hold on;
h2 = plot(t2,y2(:,1));
legend([h1 h2],'x(0)=5','x(0)=5.001')
xlabel('n')
ylabel('y')
title(['\gamma=',num2str(gamma)])

%% x-y-z��t�Ĺ�ϵ
figure;
x0 = [5;5;5];

[t,y] = ode45('Lorentz',[0,60],x0);
name = strcat('\gamma=',num2str(gamma));
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