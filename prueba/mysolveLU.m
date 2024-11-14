function [L,U,x,exectime]=mysolveLU(A,c)
tic;
[L,U,exectime]=myLU(A);
[y,exectime]=mysolveL(L,c);
b=y();
[x,exectime]=mysolveU(U,b);
exectime=toc;
end