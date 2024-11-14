t = linspace(-0,2*pi, 500);
x = 3.*cos(t);
y = 3.*sin(t);
z = 3+zeros(size(x));

figure
plot3(x,y,z)
hold on

[t,a] = meshgrid(0:0.05:2.006*pi,0:0.05:3);
x = a.*cos(t);
y = a.*sin(t);
z = a;

surf(x,y,z)
axis equal
xlabel('X'),ylabel('Y'), zlabel('Z')
shading interp
hold off 


[x,y] = meshgrid(-5:0.05:5,-5:0.05:5);
z = x.^2+y.^2;

figure
surf(x,y,z)
axis equal
hold on
xlabel('X'),ylabel('Y'), zlabel('Z')
shading interp

hold off
