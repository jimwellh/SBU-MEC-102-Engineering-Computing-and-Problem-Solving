%SBU ID：114446084
a=6;
b=0;
c=8;
d=4;

X=[c;a;b;1];
A=[a,b,c,d; b,b,b,b; d,c,b,a; 1,1,1,1];

% sine variable b and c were used, use B and C instead
B=2*A*X;
C=3*X.'*A;