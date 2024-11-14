function [x,exectime]=mysolveU(U,b)
tic;
b = b.';
t = size (U);
x = zeros(1,t(1,1));
i = t(1,1);

while i>=1
    s=0;
    count=t(1,1);
    if i==t(1,1)
       x(1,i) = b(1,i)/U(i,i);
    else
       while count > i
           s=s+U(i,count)*x(1,count);
           count=count-1;
       end
       x(1,i) = (b(1,i)-s)/U(i,i);
       
    end
i=i-1;
end
x = x.';
exectime=toc;

end
