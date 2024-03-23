%Analytical solution for v=0 & zero forcing
clear all
m=100; %mass in kilograms
c=5;  %damping coefficient N.s/m
k=3; %stifness N/m
x0=1.2 %initial position m

dt=1e-2; %time resolution in s
T=200; %final simulation time in s
t=[0:dt:T];

%Analytical solution for v=0
lam1=(-c+sqrt(c^2-4*k*m))/(2*m)
lam2=(-c-sqrt(c^2-4*k*m))/(2*m)
a1=x0/(1-lam1/lam2)
a2=x0-a1;
xa=real(a1*exp(lam1*t)+a2*exp(lam2*t)); %displacement
va=real(lam1*a1*exp(lam1*t)+lam2*a2*exp(lam2*t)); %velocity

%PLOT RESULTS
figure(1)
subplot(2,1,1)
plot(t,xa,'k')
grid on
hold on
xlabel('time [s]')
ylabel('x-x_E [m]')

subplot(2,1,2)
plot(t,va,'r')
grid on
hold on
xlabel('time [s]')
ylabel('v [m/s]')