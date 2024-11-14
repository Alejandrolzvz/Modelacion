

t = linspace(0,36*pi,10000);
a = 1.05;

z = (1/36)*t/pi;
x = .2+((a*t/36/pi).*(t/(36*pi))).*sin(t);
y = .2+((a*t/36/pi).*(t/(36*pi))).*cos(t);

figure
plot3(x,y,z);
xlabel ('x-axis')
ylabel ('y-axis')
zlabel ('z-axis')
axis equal
grid on
