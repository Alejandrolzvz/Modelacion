clc, clear
prompt='Ingrese el valor del angulo Alfa: ';
alfa=input(prompt);

prompt2='Ingrese el valor del angulo Beta: ';
Beta=input(prompt2);

Fcarga = 4000*9.81*[sind(180), cosd(180)];
F1 = 4000*9.81*[sind(alfa), cosd(alfa)];
F2 = 4000*9.81*[sind(Beta), -cosd(Beta)];

Q1 = F1(2)

Q2 = F2(2)
