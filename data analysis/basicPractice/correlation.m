clear; clc;
[Num,Txt] = xlsread('./data/catering_sale_all.xls');


Txt = Txt(1,2:end);
Corr1 = corr(Num);
Corr2 = corr(Num,'Rows','pairwise');