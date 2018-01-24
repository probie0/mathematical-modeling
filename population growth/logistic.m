%增长率r(x) 和 （1-xm/x)成正比 r(x) = r0*(1-xm/x)*x
%dx/dt = r(x)*x
clear; clc;
r0 = 0.2798; xm = 311.9526;
x0 = 3.9;  %初始人口数（单位百万）
t_end = 50;

x_next = 0; x = x0;
delta_t = 0.1;
P = zeros(1,t_end/delta_t+1); %每年的人口
k = 0;          %曲线斜率即增长率
K = zeros(size(P));  
for i = 1:length(P)
    k = x*r0*(1-x/xm);
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
title('斜率k曲线图');
