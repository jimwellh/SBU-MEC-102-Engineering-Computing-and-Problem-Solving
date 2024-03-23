clear all;
%Problem 2 [50 pts]: Write a Matlab scritp named problem2.m that performs the following operations:
%(a) [5 pts] Load to Matlab the file input.txt, which has numerical data in columns of fixed width
%(b) [5 pts] Store in a column vector x the first column of the file input.txt
%(c) [15 pts] Compute a scalar R equal to the sum of the first forty elements of x
%(d) [25 pts] Compute a scalar S that is the sum of the elements of x that are smaller than 3.93 OR larger than 7.87
%You must use FOR and IF statemnts to create a loop and decision structure in problem 2(d)

%(a)
load("input.txt");

%(b)
x=input(:,1);

%(c)
R=0;
for ii=1:40
    R=R+x(ii);
end

%(d)
S=0;
for jj=1:length(x)
    if(x(jj)<3.93||x(jj)>7.87)
        S=S+x(jj);
    end
end    