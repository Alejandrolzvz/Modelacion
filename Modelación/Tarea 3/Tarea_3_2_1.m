%% Tarea 3 ej. 2.1

%% Ej. 2.1.1

r=6;
t= linspace(0, 2*pi, 1000);
x=r*cos(t);
z=r*sin(t);
y=25;

figure
plot3(x,y+zeros(1,numel(x)),z);
xlabel ('x-axis')
ylabel ('y-axis')
zlabel ('z-axis')
axis equal
xlim([-(r+0.4*r) (r+0.4*r)])
zlim([-(r+0.4*r) (r+0.4*r)])
ylim([20 30])
grid on
%% Ej. 2.1.2

a=8;
b=4;
t= linspace(0, 2*pi, 1000);
z=a*cos(t);
y=b*sin(t);
x=10;

figure
plot3(x+zeros(1,numel(y)),y,z);
xlabel ('x-axis')
ylabel ('y-axis')
zlabel ('z-axis')
axis equal
xlim([6 14])
ylim([-(b+0.4*b) (b+0.4*b)])
zlim([-(a+0.4*a) (a+0.4*a)])
grid on

%% Ej. 2.1.3

d =10;
r = 2;
t = linspace(0, 9*pi, 1000);
x= r*cos(t);
y = r*sin(t);
z = (d/9)*t/pi;

figure
plot3(x,y,z);
xlabel ('x-axis')
ylabel ('y-axis')
zlabel ('z-axis')
axis equal
xlim([-(r+0.4*r) (r+0.4*r)])
ylim([-(r+0.4*r) (r+0.4*r)])
zlim([0 10.5])
grid on

%% Ej. 2.1.4

gap= 0.20;
a=3;
b=1;
t = linspace(0,32*pi,1000);
x= (gap/2)*t/pi;
y = b*sin(t);
z = a*cos(t);

figure
plot3(x,y,z);
xlabel ('x-axis')
ylabel ('y-axis')
zlabel ('z-axis')
axis equal
xlim([0 3.5])
ylim([-(b+0.4*b) (b+0.4*b)])
zlim([-(a+0.4*a) (a+0.4*a)])
grid on

