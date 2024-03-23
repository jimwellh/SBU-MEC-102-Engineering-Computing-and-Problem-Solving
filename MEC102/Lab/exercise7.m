clear all;
table=readtable("data.xlsx");

T=table.Time;
C=table.Cycle;
F=table.Force;

figure(1)
plot(T,F);

m=size(C);
Fm=0;
n2=0;
for ii=1:m
    if (C(ii)==2)
        Fm=Fm+F(ii);
        n2=n2+1;
    end
end
Fm=Fm/n2;
