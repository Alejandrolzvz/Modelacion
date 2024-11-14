function [y,exectime]=mysolveL(L,c)

tic;
c = c.';
t = size (L);
y = zeros(1,t(1,1));

for i= 1:t(1,1)
    s=0;
    count=1;
    if i==1
       y(1,i) = c(1,i)/L(i,i);
    else
       while count < i
           
           s=s+L(i,count)*y(1,count);
           count=count+1;
       end
       y(1,i) = (c(1,i)-s)/L(i,i);
       
    end

end
y = y.'
exectime=toc;
end