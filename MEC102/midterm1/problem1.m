clear all;
%Problem 1 [50 pts]: Your data for problem 1 are:

%The 3-by-3 matrix A whose elements are
%A(1,1) =-2.5,  A(1,2) =8.0,  A(1,3) =3.5,
%A(2,1) =7.6,  A(2,2) =-1.4,  A(2,3) =8.9,
%A(3,1) =3.9,  A(3,2) =-1.1,  A(3,3) =-3.4,
%the column vector b = [5.2; 0.2; -1.0],
%and column vector c = [-2.2; 0.6; 6.2],

%For this problem you must use element-wise operations when needed.
%Write a Matlab scritp named problem1.m that computes the following:
%(a) [10 pts] The vector v=A*b^2+sin(c)
%(b) [15 pts] The 3-by-3 matrix B whose elements are B(i,j)= A(i,j)^3-cos(A(i,j))
%(c) [25 pts] The vector x which is the solution of the linear system 3*A*(x+b)=2*c

A(1,1) =-2.5;  A(1,2) =8.0;  A(1,3) =3.5;
A(2,1) =7.6; A(2,2) =-1.4;  A(2,3) =8.9;
A(3,1) =3.9;  A(3,2) =-1.1;  A(3,3) =-3.4;
b=[5.2; 0.2; -1.0];
c = [-2.2; 0.6; 6.2];

%(a)
v=A*b.^2+sin(c);

%(b)
for ii=1:size(A,1)
    for jj=1:size(A,2)
        B(ii,jj)= A(ii,jj)^3-cos(A(ii,jj));
    end
end

%(c)
%3*A*(x+b)=2*c
%3*A*x+3*A*b=2*c
x=inv(3*A)*(2*c-3*A*b);

