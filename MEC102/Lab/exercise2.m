% Ching Wei Huang 114446084

A=[1,-1,-3;0,5,7;-3,2,1];
b=[-1;3;7];
X=inv(A)*b; %X=[x;y;z]
s=3*X(1)+2*sin(X(2))-5*X(3)^2-0.0257;