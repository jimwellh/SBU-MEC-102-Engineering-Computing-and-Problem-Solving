%example5.m: 
%IF and FOR
% Arrange data using loops and decision structures

clear all
x=[-1 2 5 -7 10 12]; %data vector x
N=length(x); %size of x

%PART 1: Finds the minimum of x, compares and places in initial position of x1
xmin=min(x); %set the minimum value of x
jj=0; %initialize index jj
for ii=1:N %iterate from 1 to N
if (x(ii) <= xmin) % compares each value of x againts xmin
jj=jj+1;
x1(jj)=x(ii);
end
end

% PART 2: order x in ascending order in a new vector x2
%oldmin=-999;
oldmin=xmin-1; % This algorithm requires an initial minimum guess called oldmin

for jj=1:N %outside loop: jj runs from 1 to N
newmin=max(x)+1; % reset new minimum to large value

 for ii=1:N %inside loop: ii runs from 1 to N

  if(x(ii)<=newmin & x(ii)> oldmin)
  newmin=x(ii); %define minimum for inner loop
  end

 end
oldmin=newmin; %update minimum
x2(jj)=oldmin; %store current minimum in ordered vector
end