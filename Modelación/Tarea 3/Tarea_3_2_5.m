%Resorte 1 (color azul)
t = linspace(0,10*pi,10000);
a = -1.5;
z1 = (16/10)*t/pi;
x1 = (5+(a*t/10/pi)).*sin(t);
y1 = -(5+(a*t/10/pi)).*cos(t);

figure
plot3(x1,y1,z1);
xlabel ('x-axis')
ylabel ('y-axis')
zlabel ('z-axis')
grid on
hold on
%Resorte 2 (color rojo)
x2 = -(5+(a*t/10/pi)).*sin(t);
y2 = (5+(a*t/10/pi)).*cos(t);
z2 = (16/10)*t/pi;
plot3 (x2,y2,z2);
%Semicirculo 1 (color naranja)
r=1.75;
t= linspace(0, pi, 1000);
x3=r*-sin(t);
y3=(1.75)+r*-cos(t);
z3= 16;
plot3(x3,y3,z3+zeros(1,numel(x3)));
%Semicirculo 2 (color morado)
r=1.75;
t= linspace(0, pi, 1000);
x4= r*sin(t);
y4= (-1.75)+r*cos(t);
z4= 16;

plot3(x4,y4,z4+zeros(1,numel(x4)));
hold off

t = linspace(0,10*pi,10000);
a = -1.5;
x = ((a/10*pi)*sin(t))+(5+(a*t/10/pi)).*cos(t);
y = ((a/10*pi)*cos(t))-(5+(a*t/10/pi)).*sin(t);
z = (16/10)/pi;
f = @(t) sqrt((((((a/10*pi)*sin(t))+(5+(a*t/10/pi)).*cos(t)).^2 + (((a/10*pi)*cos(t))-(5+(a*t/10/pi)).*sin(t)).^2 + ((16/10)/pi).^2)));
len = integral(f,0,10*pi)
%Obteniendo la longitud de un semicirculo que forma la estructura del resorte
r=1.75;
t= linspace(0, pi, 1000);
x= -r*cos(t);
y= ((-1.75)+r)*sin(t);
z= 0;
f2 = @(t) sqrt((-r*cos(t)).^2 + (((-1.75)+r)*sin(t)).^2 + (0).^2);
len2 = integral(f2,0,pi)
%Obteniendo la longitud total del resorte en centimetros
LenT = len*2 + len2*2
