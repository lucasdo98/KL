l=450;
H=80;
B=5;
s=1;
E=210000;
F=80;
a=300;
Iy=Traegheitsmoment_Kasten(B,H,s);
Schritte=1000;
x=zeros(1,Schritte);
M=zeros(1,Schritte);
w=zeros(1,Schritte);

deltax=l/Schritte;

s=(l-1)*deltax;
disp(s)


for i=l:1:Schritte
    x(i)=(l-1)*deltax;
    if x(i)<a
        M(i)=F*(x(i)-a);
        w(i)=(F*l^3/6*E*Iy)*((-x^3)/(l^3)+3*(a*x^2/l^3));
    else
        M(i)=0;
        w(i)=(F*l^3)/(2*E*Iy)*((a/l)^2*(x/l)-(1/3)*(a/l)^3);
    end
end

subplot(2,1,1)
plot(x,M)
hold on
title('Momentenverlauf')
xlabel('x')
ylabel('Moment M in Nmm')

subplot(2,1,2)
plot(x,w)
hold on
title('Biegelinie')
xlabel('x')
ylabel('Durchbiegung')
