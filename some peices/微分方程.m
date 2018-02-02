x10 = 5; x20 = 3; x30 = 7;
X1 = []; X2 = []; X3 = [];
x1 = x10; x2 = x20; x3 = x30;
x1_next = 0; x2_next = 0; x3_next = 0;
delta_t = 0.01;
for t = 0:delta_t:1
    x1_next = x1 + delta_t*x2;
    x2_next = x2 + delta_t*x3;
    x3_next = x3 + delta_t*(sin(x3)-exp(t)*x1^t - 2*t*cos(x1) - 25);
    X1 = [X1,x1];
    X2 = [X2,x2];
    X3 = [X3,x3];
    x1 = x1_next;
    x2 = x2_next;
    x3 = x3_next;
end

T = 0:delta_t:1;
plot(T,X1);