clear all;
%Problem 2 [40 pts]: Write a Matlab scritp named problem2.m that performes the following operations:
%(a) [10 pts] Use the command xlsread to load the file input.xls
%(b) [5 pts] Store the first column of input.dat in a vector x
%(c) [5 pts] Store the second column of input.dat in a vector y
%(d) [20 pts] Compute a scalar S that stores the sum of all the elements x(i) that are larger than y(i)
%You must use the FOR and IF statemnts to create a loop and decision structure to verify that x(i)>y(i)

data=xlsread("input.xls");
x=data(:,1);
y=data(:,2);

s=0;
for ii=1:14
    if(x(ii)>y(ii))
        s=s+x(ii);
    end
end


