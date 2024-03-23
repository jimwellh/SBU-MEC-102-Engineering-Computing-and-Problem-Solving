clear all;
SBUID=114446084;
a=6;
b=0;
c=8;
d=4;

%a
load data.txt;

%b
t=data(:,1);
x=data(:,2);

%c
sumtot=0;
for ii=1:length(t)
    sumtot=sumtot+t(ii)+x(ii);
end

%d
sumpart=0;
for jj=1:length(x)
    if x(jj)<=(c+d)/3
        sumpart=sumpart+x(jj);
    end
end
