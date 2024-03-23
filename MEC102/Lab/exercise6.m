global A B
A=3.2;
B=2;

t=0:0.01:5;
figure(1);
plot(t,velocity(t));

f=@velocity;
x1=1+integral(f,0,3);

function v=velocity(t)
    global A B
    v=A*(sin(5*t).^B);
end