t = linspace(0,-10*pi,10000);
a = 1.5;

x = (5+(a*t/10/pi)).*cos(t);
y = (7.5+(a*t/10/pi)).*sin(t);
z = -(16/10)*t/pi;

figure
plot3(x,y,z);
xlabel ('x-axis')
ylabel ('y-axis')
zlabel ('z-axis')
grid on
hold on


x = (3.5+(a*t/10/pi)).*cos(t);
y = (6+(a*t/10/pi)).*sin(t);
z = -(16/10)*t/pi;

plot3 (x,y,z)
