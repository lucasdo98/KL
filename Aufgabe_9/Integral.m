function [F] = Integral(t,f)
F=zeros(1,length(f));
for i=1:1:length(f)-1
    F(i+1)=F(i)+(f(i+1)+f(i))/2*(t(i+1)-t(i));
end
end

