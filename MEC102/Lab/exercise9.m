clear all;
clc;
%114446084 Ching Wei Huang
syms x t;

x(t)=5*(exp(-2*t)*sin(3*t^2)+cos(exp(-2*t)));

v(t)=diff(x,t);
a(t)=diff(v(t),t);

v_0=eval(v(0))
a_0=eval(a(0))

figure(1);
T=0:0.001:5;
plot(T,x(T),'r');
hold on;
plot(T,v(T),'b');
legend('x(t)','v(t)')

