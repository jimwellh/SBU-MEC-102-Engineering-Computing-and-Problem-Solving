clear all;
clc;
%114446084 Ching Wei Huang

m1 = 104.0;
m2 = 60.0;
m3 = 52.2;
k1 = 3.3;
k2 = 2.7;
k3 = 1.5;
c1 = 7.8;
c3 = 8.3;

dt=0.01;
t=0:dt:250;
%initial conditions
x1(1) = 1.5;
x2(1) = 2.9;
x3(1) = 4.3;
% x1(1) = 0;
% x2(1) = 0;
% x3(1) = 0;
% x10 = 1.5;
% x20 = 2.9;
% x30 = 4.3;
v1(1)=0;
v2(1)=0;
v3(1)=0;
%External Forces
for ii=1:length(t)
    Fe1(ii) = 3.*sin((2.*pi.*t(ii))./10); %ask about )
    Fe2(ii) = 0;
    Fe3(ii) = 0;
end

%free body diagram and accleration diagram
for ii=2:length(t)
    f1=Fe1(ii-1)-k1*x1(ii-1)-c1*v1(ii-1)+k2*(x2(ii-1)-x1(ii-1));    
    f2=Fe2(ii-1)-k2*(x2(ii-1)-x1(ii-1))+k3*(x3(ii-1)-x2(ii-1))+c3*(v3(ii-1)-v2(ii-1));
    f3=Fe3(ii-1)-k3*(x3(ii-1)-x2(ii-1))-c3*(v3(ii-1)-v2(ii-1));

    v1(ii)=v1(ii-1)+(f1/m1)*dt;
    x1(ii)=x1(ii-1)+v1(ii-1)*dt;
%     x1(ii)=x1(ii-1)+v1(ii-1)*dt+x10;
    v2(ii)=v2(ii-1)+(f2/m2)*dt;
    x2(ii)=x2(ii-1)+v2(ii-1)*dt;
%     x2(ii)=x2(ii-1)+v2(ii-1)*dt+x20;
    v3(ii)=v3(ii-1)+(f3/m3)*dt;
    x3(ii)=x3(ii-1)+v3(ii-1)*dt;
%     x3(ii)=x3(ii-1)+v3(ii-1)*dt+x30;
end

%Problem(1)
figure(1);
plot(t,x1,t,x2,t,x3);
legend('x1','x2','x3');
title('Displacements for all the Masses for Time 0 to 250 s')
ylabel({'Displacement (m)'});
xlabel({'Time (s)'});

%Problem(2)
figure(2);
plot(t,v1,t,v2,t,v3);
legend('v1','v2','v3');
title('Velocity for all the Masses for Time 0 to 250 s')
ylabel({'Velocity (m/s)'});
xlabel({'Time (s)'});

%Problem(3)
for ii=1:length(t)
    if(t(ii)==100)
        x1a=x1(ii)
    end
end

%Problem(4)
for ii=1:length(t)
    if(t(ii)==100)
        v1a=v1(ii)
    end
end

%Problem(5)
txmax(1)=max(x1);
txmax(2)=max(x2);
txmax(3)=max(x3);
xmax=max(txmax)

%Problem(6)
tvmax(1)=max(v1);
tvmax(2)=max(v2);
tvmax(3)=max(v3);
vmax=max(tvmax)

%Problem(7)
d=x1-x2;
dmin=abs(min(d)) 

%Problem(8)
for ii=1:length(t)
    if(t(ii)==10)
       temp=ii;
    end
end
v1mean=mean(v1(1:temp))