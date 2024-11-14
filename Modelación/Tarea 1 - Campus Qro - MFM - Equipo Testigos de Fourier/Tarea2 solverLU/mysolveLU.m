function [L,U,x,exectime]=mysolveLU(A,b)
tic;
[L,U,exectime]=myLU(A);
[x,exectime]=mysolveU(U,b);
exectime=toc;
end