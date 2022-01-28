%5!=1*2*3*4*5
%4!=1*2*3*4

%0!=1
%1!=0!*1
%2!=1!*2


function [f] = Fakultaet(n)
if n==0
    f=1;
else
    f=n*Fakultaet(n-1);
end
end

