clear all
close all
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];
hfig=figure(1);
%scatter3(x,y,z)
plot3(x,y,z,'-ok')
view(70,35)
saveas(hfig,'7035deg.png','png')
view(90,35)
saveas(hfig,'9035.png','png')
view(120,35)
saveas(hfig,'12035.png','png')