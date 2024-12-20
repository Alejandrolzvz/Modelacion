%% Tarea 3 ej. 2.2

%% Ej. 2.2.1

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
grid on
axis equal
xlim([-(r+0.4*r) (r+0.4*r)])
zlim([-(r+0.4*r) (r+0.4*r)])
ylim([20 30])
hold on

r=6;
t= linspace(0, 2*pi, 8);
x=r*cos(t);
z=r*sin(t);
y=25;

vx=-r*sin(t);
vz=r*cos(t);
vy=0;

ax=-r*cos(t);
az=-r*sin(t);
ay=0;

quiver3 (x,y+zeros(1,numel(x)),z,vx,vy+zeros(1,numel(x)),vz,0);
quiver3 (x,y+zeros(1,numel(x)),z,ax,ay+zeros(1,numel(x)),az,0);

%% Ej. 2.2.2

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
grid on
axis equal
xlim([6 14])
ylim([-(b+0.4*b) (b+0.4*b)])
zlim([-(a+0.4*a) (a+0.4*a)])
hold on

a=8;
b=4;
t= linspace(0, 2*pi, 8);
z=a*cos(t);
y=b*sin(t);
x=10;


vz=-a*sin(t);
vy=b*cos(t);
vx=0;

az=-a*cos(t);
ay=-b*sin(t);
ax=0;

quiver3 (x+zeros(1,numel(y)),y,z,vx+zeros(1,numel(y)),vy,vz,0);
quiver3 (x+zeros(1,numel(y)),y,z,ax+zeros(1,numel(y)),ay,az,0);

%% Ej. 2.2.3

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
grid on
axis equal
xlim([-(r+0.4*r) (r+0.4*r)])
ylim([-(r+0.4*r) (r+0.4*r)])
zlim([0 10.5])
hold on

d =10;
r = 2;
t = linspace(0, 9*pi, 25);
x= r*cos(t);
y = r*sin(t);
z = (d/9)*t/pi;

vx = -r*sin(t);
vy = r*cos(t);
vz = (d/9)/pi;

ax = -r*cos(t);
ay = -r*sin(t);
az = 0;

quiver3 (x,y,z,vx,vy,vz+zeros(1,numel(y)),0);
quiver3 (x,y,z,ax,ay,az+zeros(1,numel(y)),0);

%% Ej. 2.2.4

gap= 0.20;
a=3;
b=1;
t = linspace(0,32*pi,1000);
x= (gap/2)*t/pi;
y = b*sin(t);
z = a*cos(t);

figure
plot3(x,y,z);
grid on
xlabel ('x-axis')
ylabel ('y-axis')
zlabel ('z-axis')
axis equal
xlim([0 3.5])
ylim([-(b+0.4*b) (b+0.4*b)])
zlim([-(a+0.4*a) (a+0.4*a)])
hold on

t = linspace(0, 32*pi, 26);
gap= 0.20;
a=3;
b=1;
x= (gap/2)*t/pi;
y = b*sin(t);
z = a*cos(t);

vx = (gap/2)/pi;
vy = b*cos(t);
vz = -a*sin(t);

ax = 0;
ay = -b*sin(t);
az = -a*cos(t);

quiver3 (x,y,z,vx+zeros(1,numel(vy)),vy,vz,0);
quiver3 (x,y,z,ax+zeros(1,numel(ay)),ay,az,0);
