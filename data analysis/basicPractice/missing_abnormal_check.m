clear; clc;
path_catering_sale = './data/catering_sale.xls';
[Num,Txt] = xlsread(path_catering_sale);
Sales = Num(:,1);
%ȱʧֵ���
Nanvalue = find(isnan(Sales));
disp('ȱʧֵ����Ϊ:'); disp(size(Nanvalue,1));

%�쳣ֵ��⣬ʹ������ͼ
p_temp = prctile(Sales,[25,75]);
p25 = p_temp(1); p75 = p_temp(2);
upper = p75 + 1.5*(p75-p25);
lower = p25 - 1.5*(p75-p25);
Values_upper = Sales(Sales>upper);
Values_lower = Sales(Sales<lower);
boxplot(Sales);
