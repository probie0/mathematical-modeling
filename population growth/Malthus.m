%dx/dt = r*x r为常数
clear; clc
r = 0.304;
x0 = 3.9;  %初始人口数（单位百万）
t_end = 50;
%*******数值解*********%
x_next = 0; x = x0;
delta_t = 0.1;
P = zeros(1,t_end/delta_t+1); %每年的人口
for i = 1:length(P)
    x_next = x + x*r*delta_t;
    P(i) = x;
    x = x_next;
end
T = 0:delta_t:t_end;
plot(T,P);
title('x-t曲线图');