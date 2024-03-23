clear all;
%SBU ID：114446084
a=6;
b=0;
c=8;
d=4;

M=[d,a,0,7; b,c,1,5; c,b,0,3; a,d,1,1];

S=M(2:3,2:3);
V=M(1:4,3);

%Use the function max to find the maximum value 𝑚_i𝑚𝑎𝑥𝑗𝑚𝑎𝑥 of M and the 
% indexes imax and jmax for the maximum.

%[m_imaxjmax,imaxjmax]=max(M);
%Find the maximum value and its lacation for every column in M

m_imaxjmax=max(max(M));
%Find the maximum value in M
[imax,jmax]=find(M==m_imaxjmax);
%Find and save the row and column location where the maximum value in M are 


%Use ... min

%[m_iminjmin,iminjmin]=min(M);
%Find the minimum value and its lacation for every column in M

m_iminjmin=min(min(M));
%Find the minimum value in M
[imin,jmin]=find(M==m_iminjmin);
%Find and save the row and column location where the minimum value in M are 

