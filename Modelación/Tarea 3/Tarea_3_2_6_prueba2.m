%Semicirculo 1 (color naranja) 
r=1.75; 
t= linspace(0, pi, 1000); 
x3= (0)+r*cos(t); 
y3= (7)+r*sin(t); 
z3= 0.25*t;
plot3(x3,y3,z3); 

hold on 
xlabel ('x-axis') 
ylabel ('y-axis') 
zlabel ('z-axis') 
grid on 

r=3; 
t= linspace(0, pi, 1000); 
x3= (0)+r*cos(t); 
y3= (7)+r*sin(t); 
z3= 0.25*t; 
plot3(x3,y3,z3); 

%Linea base exterior (color amarillo)
k = linspace(3, 3, 100);
r = linspace(3, 7, 100);
x = k;
y = r;
z = 0*k;
plot3(x, y, z);

%Linea base interior (color morada)
k = linspace(1.75, 1.75, 100);
r = linspace(3, 7, 100);
x = k;
y = r;
z = 0*k;
plot3(x, y, z);

%Linea base interior (color )
k = linspace(-1.75, -1.75, 100);
r = linspace(7, 3, 100);
l = linspace (0.8, 1.6, 100);
x = k;
y = r;
z = l;
plot3(x, y, z);

%Linea base exterior (color )
k = linspace(-3, -3, 100);
r = linspace(7, 3, 100);
l = linspace (0.8, 1.6, 100);
x = k;
y = r;
z = l;
plot3(x, y, z);

%Semicirculo 1 (color AMARILLO)
r=1.75; 
t= linspace(0,pi, 1000); 
x3= r*-cos(t); 
y3= 3+r*-sin(t); 
z3= 1.6+0.25*t; 
plot3(x3,y3,z3); 

%Semicirculo 1 (color MORADO)
r=3; 
t= linspace(0,pi, 1000); 
x3= r*-cos(t); 
y3= 3+r*-sin(t); 
z3= 1.6+0.25*t; 
plot3(x3,y3,z3);

%Semicirculo 1 (color naranja) 
r=1.75; 
t= linspace(0, pi, 1000); 
x3= (0)+r*cos(t); 
y3= (7)+r*sin(t); 
z3= 0.25*t;
plot3(x3,y3,z3); 

hold on 
xlabel ('x-axis') 
ylabel ('y-axis') 
zlabel ('z-axis') 
grid on 

r=3; 
t= linspace(0, pi, 1000); 
x3= (0)+r*cos(t); 
y3= (7)+r*sin(t); 
z3= 0.25*t; 
plot3(x3,y3,z3); 

%Linea base exterior (color amarillo)
k = linspace(3, 3, 100);
r = linspace(3, 7, 100);
x = k;
y = r;
z = 0*k;
plot3(x, y, z);

%Linea base interior (color morada)
k = linspace(1.75, 1.75, 100);
r = linspace(3, 7, 100);
x = k;
y = r;
z = 0*k;
plot3(x, y, z);

%Linea base interior (color )
k = linspace(-1.75, -1.75, 100);
r = linspace(7, 3, 100);
l = linspace (0.8, 1.6, 100);
x = k;
y = r;
z = l;
plot3(x, y, z);

%Linea base exterior (color )
k = linspace(-3, -3, 100);
r = linspace(7, 3, 100);
l = linspace (0.8, 1.6, 100);
x = k;
y = r;
z = l;
plot3(x, y, z);

%Semicirculo 1 (color AMARILLO)
r=1.75; 
t= linspace(0,pi, 1000); 
x3= r*-cos(t); 
y3= 3+r*-sin(t); 
z3= 1.6+0.25*t; 
plot3(x3,y3,z3); 

%Semicirculo 1 (color MORADO)
r=3; 
t= linspace(0,pi, 1000); 
x3= r*-cos(t); 
y3= 3+r*-sin(t); 
z3= 1.6+0.25*t; 
plot3(x3,y3,z3);

%Semicirculo 1 (color morado)
r=1.75; 
t= linspace(0,pi, 1000); 
x3= r*-cos(t); 
y3= 2.25+r*-sin(t); 
z3= 11.2+0.25*t; 
plot3(x3,y3,z3); 

hold on 
xlabel ('x-axis') 
ylabel ('y-axis') 
zlabel ('z-axis') 
grid on 

%Semicirculo 1 (color verde)
r=3; 

t= linspace(0,pi, 1000); 
x3= r*-cos(t); 
y3= 2.25+r*-sin(t); 
z3= 11.2+0.25*t; 
plot3(x3,y3,z3);

%Quinto piso hacia abajo

%Semicirculo 1 (color azul) 
r=1.75; 
t= linspace(0, pi, 1000); 
x4= (0)+r*-cos(t); 
y4= (7)+r*sin(t); 
z4= 12+0.25*-t;

plot3(x4,y4,z4); 


%Semicirculo 1 (color rojo) 
r=3; 
t= linspace(0, pi, 1000); 
x5= (0)+r*-cos(t); 
y5= (7)+r*sin(t); 
z5= 12+0.25*-t; 

plot3(x5,y5,z5); 

%cuartocirculo 1 (color verde) 
r=1.75; 
t= linspace(0, 0.5*pi, 1000); 
x4= (0)+r*-cos(t); 
y4= (7)+r*-sin(t); 
z4= 12;

plot3(x4,y4,z4+zeros(1,numel(x4)));

%cuartocirculo 2 (color azul) 
r=3; 
t= linspace(0, 0.5*pi, 1000); 
x4= (0)+r*-cos(t); 
y4= (7)+r*-sin(t); 
z4= 12;

plot3(x4,y4,z4+zeros(1,numel(x4)));

%Semi-ovalo int 2 
a=3; 
b=3; 
t= linspace(0, 0.5*pi, 1000); 
x4= a*sin(t); 
y4= (2.25)+b*cos(t); 
z4= 12; 

plot3(x4,y4,z4+zeros(1,numel(x4))); 

%Semi-ovalo ext 2 
a=1.75; 
b=1.75; 
t= linspace(0, 0.5*pi, 1000); 
x4= a*sin(t); 
y4= (2.25)+b*cos(t); 
z4= 12; 

plot3(x4,y4,z4+zeros(1,numel(x4)));

hold off

