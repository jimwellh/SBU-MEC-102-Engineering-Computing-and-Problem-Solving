X=[-1,2,5,-7,10,12];

%Goal: create X1 that has numbers ordered from mn. to max

x_min=min(X);
N=length(X);
X1=[];

for ii=1:N
    if(X(ii)<x_min)
       jj=1;
       X1(jj)=X(ii);
       jj=jj+1;
    end
end