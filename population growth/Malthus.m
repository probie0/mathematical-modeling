%dx/dt = r*x rΪ����
clear; clc
r = 0.304;
x0 = 3.9;  %��ʼ�˿�������λ����
t_end = 50;
%*******��ֵ��*********%
x_next = 0; x = x0;
delta_t = 0.1;
P = zeros(1,t_end/delta_t+1); %ÿ����˿�
for i = 1:length(P)
    x_next = x + x*r*delta_t;
    P(i) = x;
    x = x_next;
end
T = 0:delta_t:t_end;
plot(T,P);
title('x-t����ͼ');