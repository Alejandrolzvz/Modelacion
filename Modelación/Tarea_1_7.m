clc, clear
%%Ejercicio 1.7
%Fuerza del adorno
O=4;
A=6;
H= sqrt(4^2+6^2);
Sdang = O/H;
Cdang = A/H;
F1 = 15*9.81*[sind(180), cosd(180)];
T1 = 15*9.81*[Sdang, Cdang];
T2 = 15*9.81*[-Sdang, Cdang];
T= -F1/ (2* Sdang);
T(2)
%%