%Problem 1 [60 pts]: Given the matrix A = [ 1 -1 3; -1 2 5; 3 0 -4] and the vector b=[ 1; 0; -2],
%Write a Matlab scritp named problem1.m that computes and the following:
%(a) [10 pts] The determinant D of the matrix A
%(b) [20 pts] The matrix B which is the transpose of A
%(c) [20 pts] The column vector x which is the solution of the linear system A x = b
%(d) [10 pts] The colum vector v storing the square of each element of the vector x
clear all;

A = [ 1 -1 3; -1 2 5; 3 0 -4];
b=[ 1; 0; -2];
D=det(A)
B=A.'
x=inv(A)*b
v=x.^2
