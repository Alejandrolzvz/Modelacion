N = 10;
a = -4;
b = 1;
c = 1;
d = 1;
e = 1;
M = diag(a*ones(1,N)) + diag(b*ones(1,N-1),1) + diag(c*ones(1,N-1),-1) + diag(d*ones(1,N-2),2) + diag(e*ones(1,N-2),-2);
whos M
n = 10;
e = ones(n,1);
S = spdiags([e e -4*e e e],-2:2,n,n);
whos S

