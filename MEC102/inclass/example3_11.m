clear all

m=100; %mass in kilograms
c=5;  %damping coefficient N.s/m
k=3; %stifness N/m
x0=1.2 %initial position m

dt=1e-1; %time resolution in s
T=200; %final simulation time in s
t=[0:dt:T];

%NUMERICAL SOLUTION VIA FORWARD EULER
N=length(t);
x(1)=x0;
v(1)=0;
%M=[m 0;0 1]; %mass matrix (constant)
Fmax=2;T1=10;T2=100;
for ii=2:N
%external force active for T1<t<T2   
if(t(ii) >= T1 && t(ii) <= T2)    
Fe=Fmax;
else
Fe=0
end

f=-c*v(ii-1)-k*x(ii-1)+Fe;
v(ii)=v(ii-1)+f/m*dt;
x(ii)=x(ii-1)+v(ii-1)*dt;
end


%Analytical solution for v=0 & zero forcing
lam1=(-c+sqrt(c^2-4*k*m))/(2*m);
lam2=(-c-sqrt(c^2-4*k*m))/(2*m);
a1=x0/(1-lam1/lam2);
a2=x0-a1;
xa=real(a1*exp(lam1*t)+a2*exp(lam2*t)); %displacement
va=real(lam1*a1*exp(lam1*t)+lam2*a2*exp(lam2*t)); %velocity

%PLOT RESULTS
sk=T/dt/80;
figure(1)
subplot(2,1,1)
plot(t(1:sk:N),x(1:sk:N),'ok')
grid on
hold on
plot(t,xa,'k')
xlabel('time [s]')
ylabel('x-x_E [m]')

subplot(2,1,2)
plot(t(1:sk:N),v(1:sk:N),'or')
grid on
hold on
plot(t,va,'r')

xlabel('time [s]')
ylabel('v [m/s]')


