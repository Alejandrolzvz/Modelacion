function [L,U,exectime]=myLU(A)
tic;
clc
%%Ejercicio 1.19
%Operaciones: Factorizaión LU

t = size (A);
i = 1;
U = A;
L = [1];
q = 2;
w = 2;
for n = 2:t(1,1)
    L(n,:)=0;
end
for n = 2:t(1,2)
    L(:,n)=0;
end

while w <= t(1,2)
    L(q,w) = 1;
    q=q+1;
    w=w+1;
end

while i <= t(1,1)
    e=i+1;
while e <= t(1,2)
    if U(e,i)~=0
    c = U(e,i)/U(i,i);
    L(e,i)=c;
    U(e,:)=U(e,:)-(c*U(i,:));
    e=e+1;
    else
    e=e+1;
    end
end
i = i+1;
end
    exectime=toc;
end