clear all;

x=-5:(5+5)/400:5;
n=length(x);
f=[];

for ii=1:n
     if(x(ii)<0)
        f(ii)=-1;
     elseif(x(ii)>1)
        f(ii)=2;
     else
        f(ii)=3*x(ii)-1;
     end
end

hfig=figure(1);
plot(x,f);
saveas(hfig,'plot1','png');
