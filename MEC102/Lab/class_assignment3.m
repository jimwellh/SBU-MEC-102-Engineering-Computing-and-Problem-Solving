clear all;
% 3x4 systemsolution
A=[4,3,3,-5;1,1.3,1.5,-5;1,-0.4,-0.43,2.2];
b=[9;3;-2];

%Echelon form
E=[A,b];
%Peform Guess Elimination
S=rref(E);

x3=1.5;
x4=[0:5];

x2=S(2,5)-S(2,4)*x4-S(2,3)*x3;
x1=S(1,5)-S(1,2)*x2-S(1,3)*x3-S(1,4)*x4;

figure(1)
plot(x4,x1,'r')
hold on
plot(x4,x2,'k')

Y=1;
