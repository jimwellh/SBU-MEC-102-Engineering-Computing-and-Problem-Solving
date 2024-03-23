A=1;
B=0.25;
T_1=2;
T_2=0.02;
t=0:3.5/10000:3.5;
x_1=A*sin(t/T_1)+B*(sin(t/T_2).^2);
C=0.25;
D=0.5;
x_2=C*(t.^2)-D*t;

figure(1);
plot(t,x_1,t,x_2);
title('x vs. t')
xlabel('t(s)')
ylabel('x(cm)')

s=8;