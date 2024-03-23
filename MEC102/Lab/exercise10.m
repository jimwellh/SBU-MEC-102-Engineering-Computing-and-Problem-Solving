clear all;
clc;

a=0.1;
b=0.7;
R=0.15;

syms A x tem;
tem=sqrt(b^2-((b/a).*x)^2);
A=4*int(tem,0,a)-pi*R^2;
eval(A)

a=0.05;
b=0.7;
R=0.15;
tem=sqrt(b^2-((b/a).*x)^2);
A1=4*int(tem,0,a)-pi*R^2;
eval(A1)