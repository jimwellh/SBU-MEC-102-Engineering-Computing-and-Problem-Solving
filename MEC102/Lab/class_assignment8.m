clear all;
clc;
%114446084 Ching Wei Huang
S=readtable("data.csv");
M=mean(S.holes);
D=std(S.holes);

set1=S.holes(1:10);
set2=S.holes(31:40);
set3=S.holes(101:110);
set4=S.holes(201:210);

mu_1=mean(set1);
mu_2=mean(set2);
mu_3=mean(set3);
mu_4=mean(set4);
delta_1=std(set1);
delta_2=std(set2);
delta_3=std(set3);
delta_4=std(set4);

E=max([abs(mu_1-M),abs(mu_2-M),abs(mu_3-M),abs(mu_4-M)]);