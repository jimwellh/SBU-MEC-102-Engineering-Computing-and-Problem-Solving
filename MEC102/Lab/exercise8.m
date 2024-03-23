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

mu(1)=mean(set1);
mu(2)=mean(set2);
mu(3)=mean(set3);
mu(4)=mean(set4);
delta(1)=std(set1);
delta(2)=std(set2);
delta(3)=std(set3);
delta(4)=std(set4);

E=max(abs(mu-M));