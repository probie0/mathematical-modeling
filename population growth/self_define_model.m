%增长率r 和 （xm-x)成正比
clear; clc;
r0 = 0.00304; %随便凑

xm = 311.9526;
x0 = 3.9;  %初始人口数（单位百万）
t_end = 10;

x_next = 0; x = x0;
delta_t = 0.1;
P = zeros(1,t_end/delta_t+1); %每年的人口
k = 0;          %曲线斜率即增长率
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
title('x-t曲线图');
figure;
plot(T,K);
title('斜率曲线图');