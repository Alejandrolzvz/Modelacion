


M1 = [2 2 2; -1 1 2; -1 0 1; 1 1 2];
b = [1; 0; 0; 0]
M1

[Q, R] = QR_factorization(M1)
Q
R
Q*R
Qt = Q.'
bf = Qt * b
[x,exectime]=mysolveU(R,bf)
x()

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