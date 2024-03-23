t=0:0.1:10;

g= 9.8;

v0 = 50.75;

theta0 = 5*pi/12;

y0 = 0;

x0 = 0; 
y = y0-0.5*g* t.^2 + v0*sin(theta0).*t;
x=x0+v0*cos(theta0).*t;

figure(1);

subplot(2,1,1)

plot(t,x);

title('x(t) vs. t');

xlabel('Time (s)');

ylabel('Horizontal Distance (m)');

grid on;

subplot(2,1,2)

plot(t,y);

title('y(t) vs. t');

xlabel('Time (s)');

ylabel('Altitude (m)');

grid on;