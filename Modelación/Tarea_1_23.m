%% Ejercicio 1.23. Aplicación real de mínimos cuadrados
%Encuentre una aplicacion real en la que pueda modelar un fenómeno y
%reducirlo a un problema de mínimos cuadrados con más de 3 coe?cientes.
%Resuélvalo utilizando los algoritmos ya progrmados, analice e interprete
%sus resultados através de grá?cos y comentarios.

%En ingeniería civil el concreto es uno de los materiales más importantes y
%la resistencia a la compresión en el concreto, que es la capacidad para
%soportar una carga por unidad de área, es la característica principal del
%concreto.(CEMEX, 2019)

%Se obtuvo una base de datos la cual cuenta con 9 columnas las primeras 8
%tienen los valores de las variables que se tomaron en cuenta todas en Kg
%sobre metro cúbico a excepcion de la última que es la edad dada en días
%Las variables son las siguientes:
%Cement (component 1)(kg in a m^3 mixture)
%Blast Furnace Slag (component 2)(kg in a m^3 mixture)
%Fly Ash (component 3)(kg in a m^3 mixture)
%Water  (component 4)(kg in a m^3 mixture)
%Superplasticizer (component 5)(kg in a m^3 mixture)
%Coarse Aggregate  (component 6)(kg in a m^3 mixture)
%Fine Aggregate (component 7)(kg in a m^3 mixture)
%Age (day)
%En la novena columna se encuentran los resultados de la prueba de
%compresión en megapascales
%Concrete compressive strength(MPa, megapascals) 
%(Dua, 2019)
%% 
clc

M1 = xlsread('Concrete_Data.xlsx','A2:H1031');
b = xlsread('Concrete_Data.xlsx','I2:I1031');
M1;

[Q, R] = QR_factorization(M1);
Q;
R;
Q*R;
Qt = Q.';
bf = Qt * b;
[y,exectime]=mysolveU(R,bf);
y()


c1 = M1(:,1);
c2 = M1(:,2);
c3 = M1(:,3);
c4 = M1(:,4);
c5 = M1(:,5);
c6 = M1(:,6);
c7 = M1(:,7);
c8 = M1(:,8);
figure
g1=scatter(c1,b);
hline = refline(y(1),0);
hline.Color = 'm';

figure
g2=scatter(c2,b);
hline = refline(y(2),0);
hline.Color = 'm';

figure
g3=scatter(c3,b);
hline = refline(y(3),0);
hline.Color = 'm';

figure
g4=scatter(c4,b);
hline = refline(y(4),0);
hline.Color = 'm';

figure
g5=scatter(c5,b);
hline = refline(y(5),0);
hline.Color = 'm';

figure
g6=scatter(c6,b);
hline = refline(y(6),0);
hline.Color = 'm';

figure
g7=scatter(c7,b);
hline = refline(y(7),0);
hline.Color = 'm';

figure
g8=scatter(c8,b);
hline = refline(y(8),0);
hline.Color = 'm';

function proy_u_v = proyection(u, v)
    proy_u_v = (dot(v,u)/dot(u,u)) * u;
end

function [Q, R] = QR_factorization(A)
    [n, m] = size(A);
    
    %Metodo de Ortogonalizacion de Gram-Schmidt
    u = zeros(n,m);
    e = zeros(n,m);
    
    u(:,1) = A(:,1);
    e(:,1) = u(:,1)/norm(u(:,1));
    
    for i = 2:m
        u(:,i) = A(:,i);
        
        for j = 1:i-1
            u(:,i) = u(:,i) - proyection(e(:,j),A(:,i));
        end
        e(:,i) = u(:,i)/norm(u(:,i));
    end
    Q = e;
    R = transpose(Q)*A;
end
%%
%De acuerdo a la regresión pormínimos cuadrados mediante la factorización
%QR los factores que se tienen afectan de la siguiente manera:

%Cement (component 1)(kg in a m^3 mixture)              0.1134
%Blast Furnace Slag (component 2)(kg in a m^3 mixture)  0.0963
%Fly Ash (component 3)(kg in a m^3 mixture)             0.0794
%Water  (component 4)(kg in a m^3 mixture)             -0.1824
%Superplasticizer (component 5)(kg in a m^3 mixture)    0.2634
%Coarse Aggregate  (component 6)(kg in a m^3 mixture)   0.0103
%Fine Aggregate (component 7)(kg in a m^3 mixture)      0.0114
%Age (day)                                              0.1140

%Por lo que la ecuación de la resistencia a la compresión en el concreto
%sería

% 0.0759 X1 + 0.0525 X2 + 0.0215 X3 + 0 X4 + 0.8960 X5 + 0 X6 + 0 X7 +
% 0.0945 X8 = y

%%
%CEMEX. (2019, April 5). ¿Por qué se determina la resistencia a la
%   compresión en el concreto?: CEMEX Peru. Retrieved March 12, 2020, from
%   https://www.cemex.com.pe/-/-por-que-se-determina-la-resistencia-a-la-
%   compresion-en-el-concreto-
%Dua, D. and Graff, C. (2019). UCI Machine Learning Repository 
%   [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California,
%   School of Information and Computer Science. 
