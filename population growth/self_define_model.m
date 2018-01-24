%������r �� ��xm-x)������
clear; clc;
r0 = 0.00304; %����

xm = 311.9526;
x0 = 3.9;  %��ʼ�˿�������λ����
t_end = 10;

x_next = 0; x = x0;
delta_t = 0.1;
P = zeros(1,t_end/delta_t+1); %ÿ����˿�
k = 0;          %����б�ʼ�������
K = zeros(size(P));  
for i = 1:length(P)
    k = x*r0*(xm-x);
    x_next = x + delta_t*k;
    P(i) = x;
    K(i) = k;
    x = x_next;
end
T = 0:delta_t:t_end;
figure;
plot(T,P);
title('x-t����ͼ');
figure;
plot(T,K);
title('б������ͼ');