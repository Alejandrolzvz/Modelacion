% Reset
close all;
clear all;

%%%%%%%%%%               User configurations               %%%%%%%%%%
axesColor = 'Black';
% Set default plot limits
xlimCfg = [-1.5, 1.5];
ylimCfg = [-1.5, 1.5];
zlimCfg = [-1.5, 1.5];
% Set axes labels
xlab = 'x';
ylab = 'y';
zlab = 'z';
aspect = [1, 1, 1];% Primer segmento (Estación de carga de pasajeros) 
% asumiendo que cada unidad equivale a 1 metro
t = linspace(0, 12, 1000);

x =  1.*t;
y = zeros(size(t));
z = zeros(size(t));

plot3(x, y, z);
hold on

% Curva para inicio de pendiente
t = linspace(12, 14, 1000);

r = 2;
x = 12 + (r * cos(t/(8/pi)));
y = 0 + zeros(size(x));
z = 2 + (r * sin(t/(8/pi)));

plot3(x, y, z);

% Pendiente
% Obtener coordenadas iniciales
t0 = 1.75*pi;
px = 12 + (r * cos(t0))
py = 0 + zeros(size(px));
pz = 2 + (r * sin(t0))

t = linspace(14, 44, 1000);

x =  px + 1.*t-14;
y = zeros(size(t));
z = x - px + pz;
plot3(x, y, z);


% Circulo para drop
% Obtener coordenadas iniciales
t0 = 30;
pxx = px + 1.*t0
py = zeros(size(t0));
pz = pxx - px + pz

t = linspace(0.75*pi, -.25*pi, 1000);

r = 4;
x = pxx - (r*cos(0.75*pi)) + (r * cos(t));
y = 0 + zeros(size(x));
z = pz - (r*sin(0.75*pi)) + (r * sin(t));

plot3(x, y, z);

% Circulo de Drop
t0 = -.25*pi;
px = pxx - (r*cos(0.75*pi)) + (r * cos(t0))
py = zeros(size(t0));
pz = pz - (r*sin(0.75*pi)) + (r * sin(t0))

t = linspace(0.75*pi, 1.5*pi, 1000);

r = 11;
x = px - (r*cos(0.75*pi)) + (r * cos(t));
y = 0 + zeros(size(x));
z = pz - (r*sin(0.75*pi)) + (r * sin(t));

plot3(x, y, z);

% Helice primer loop
t0 = 1.5*pi;
pxx = px - (r*cos(0.75*pi)) + (r * cos(t0))
py = 0 
pz = pz - (r*sin(0.75*pi)) + (r * sin(t0))

r = 7; % radio
b = 4;  % Cambio vertical entre vuelta
c = 1;  % # de vueltas
t = linspace(-.5*pi, 1.5*pi*c, 1000);

x = pxx - (r*cos(-.5*pi)) + (r*cos(t));
y = -((b*-.5*pi)/(2*pi)) + ((b*t)/(2*pi));
z = pz - (r*sin(-.5*pi)) + (r*sin(t));
plot3(x,y,z);

% Curva inicio 2o ascenso
t0 = 1.5*pi;
px = pxx - (r*cos(-.5*pi)) + (r*cos(t0))
py = -((b*-.5*pi)/(2*pi)) + ((b*t0)/(2*pi))
pz = pz - (r*sin(-.5*pi)) + (r*sin(t0))

r = 7;
t = linspace(1.5*pi, 1.75*pi, 1000);

x = px - (r*cos(1.5*pi)) + (r * cos(t));
y = py + zeros(size(x));
z = pz - (r*sin(1.5*pi)) + (r * sin(t));
plot3(x, y, z);


% cima de drop 
t0 = 1.75*pi;
px = px - (r*cos(1.5*pi)) + (r * cos(t0))
py = py 
pz = pz - (r*sin(1.5*pi)) + (r * sin(t0))

a = 16;
b = a;
t = linspace(.75*pi, 0.25*pi, 1000);

x = px - (a*cos(.75*pi)) + (a * cos(t));
y = py + zeros(size(x));
z = pz - (b*sin(.75*pi)) + (b * sin(t));
plot3(x, y, z);

% Drop al piso
t0 = .25*pi;
px = px - (a*cos(.75*pi)) + (a * cos(t0))
py = py
pz = pz - (b*sin(.75*pi)) + (b * sin(t0))

r = 28;
t = linspace(1.25*pi, 1.5*pi, 1000);

x = px - (r*cos(1.25*pi)) + (r * cos(t));
y = py + zeros(size(x));
z = pz - (r*sin(1.25*pi)) + (r * sin(t));
plot3(x, y, z);

% Curva horizontal
t0 = 1.5*pi;
px = px - (r*cos(1.25*pi)) + (r * cos(t0))
py = py
pz = pz - (r*sin(1.25*pi)) + (r * sin(t0))


r = 10; % radio
t = linspace(1.5*pi, 2.5*pi, 1000);

x = px - (r*cos(1.5*pi)) + (r * cos(t));
y = py - (r*sin(1.5*pi)) + (r * sin(t));
z = pz - + zeros(size(x));
plot3(x,y,z);
format long
% Linea recta
t0 = 2.5*pi;
px = px - (r*cos(1.5*pi)) + (r * cos(t0))
py = py - (r*sin(1.5*pi)) + (r * sin(t0))
pz = pz


t = linspace(0, px, 1000);

x = px - 1.*t;
y = py +zeros(size(t));
z = pz + zeros(size(t));
plot3(x, y, z);

% Ultima curva
t0 = px;
px = 0;
py = py
pz = pz

r = 12; % radio
t = linspace(1.5*pi, 2.5*pi, 1000);

x = px + (r*cos(1.5*pi)) - (r * cos(t));
y = py + (r*sin(1.5*pi)) - (r * sin(t));
z = pz - + zeros(size(x));
plot3(x,y,z);


%%%%%%%%%%             Configuration of figure (plot)             %%%%%%%%%
axis equal
% Configure cartesian plot
xlabel(xlab);
ylabel(ylab);
zlabel(zlab);
grid on;
pbaspect(aspect);
hold off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%