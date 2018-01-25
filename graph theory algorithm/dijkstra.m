clear; clc;
W = [0 2 1 8 inf inf inf inf;
    2 0 inf 6 1 inf inf inf;
    1 inf 0 7 inf inf 9 inf;
    8 6 7 0 5 1 2 inf;
    inf 1 inf 5 0 3 inf 9;
    inf inf inf 1 3 0 4 6;
    inf inf 9 2 inf 4 0 3;
    inf inf inf inf 9 6 3 0];

n = size(W,1); %定点个数
p0 = 1;   %计算第x个点到其余点的最短距离
w = W(p0,:);
S = zeros(1,n);
S(1) = p0;
S = [];
%初始化Dist距离数组
Dist = inf*ones(1,n);
Dist(1) = 0;
V = 1:n;     %剩余要访问的点；
V(p0) = NaN;  %去掉第一点

Z = zeros(1,n); %最短路径前驱节点数组；
j = 2; p = p0; %当前点
while any(~isnan(V)) 
    V_remain = V(~isnan(V) & V~=p);
    for p_next = V_remain;
        if(Dist(p_next) > W(p, p_next) + Dist(p))
            Dist(p_next) = W(p,p_next) + Dist(p);
            Z(p_next) = p; 
        end
    end
    p_min = 0; dis_min = inf;
    for i = V_remain       %找到当期距离原点最近的点
        if(Dist(i) < dis_min)
            p_min = i;
            dis_min = Dist(i);
        end
    end
    V(p_min) = NaN;
    S(j) = p_min; j = j+1;
    p = p_min;
end

Path = zeros(n);  %表示路径的数组
%回溯。。。。。

S
Z
Dist


    
    
    