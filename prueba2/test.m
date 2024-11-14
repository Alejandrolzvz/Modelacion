clc


A = [1 2 -3 1; 0 1 4 2; 5 -1 2 0; 1 1 -2 3];
c = [10; 10; 10; 10]
[L,U,x,exectime]=mysolveLU(A,c)