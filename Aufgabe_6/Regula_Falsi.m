function [c] = Regula_Falsi(f,a,b,eps)

c=a;

while abs(f(c))>eps
    c=a-(b-a)/(f(b)-f(a))*f(a);

    if f(a)*f(c)>0
        a=c;
    else
        b=c;
    end
end
    
end

