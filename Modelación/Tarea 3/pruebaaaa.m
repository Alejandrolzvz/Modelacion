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
