weiter=1
while weiter
Profiltyp = input('Profiltyp ?','s')

s= input('Materialstärke s= ');

switch Profiltyp
    case {'K', 'k'}
    H = 30;
    B = 20;
    Iy = Traegheitsmoment_Kasten(B,H,s);
    case 'H'
    R = 30;
    Iy = Traegheitsmoment_Hohlzylinder(R,s);
    case 'E'
    A = 30;
    B = 20;
    Iy = Traegheitsmoment_Ellipse(A,B,s);
end
L= input ('Balkenlänge L=');
F= input ('Kraft F=');
E= input ('E-Modul E=');
a= input('Kraftangriffspunkt a=');
b= L-a;
xa = 0:1:a;
xb = a+1:1:L;


x= [xa,xb];

Ma=F*B/L*xa;
Mb=F*a/L*(L-xb);
M= [Ma,Mb];

wa=((F*b*L.^2*xa)/(6*E*Iy*L)).*(1-b^2/L^2-xa.^2/L^2);
wb=((F*a*L.^2*(L-xb))/(6*E*Iy*L)).*(1-a^2/L^2-(L-xb).^2/L^2);
w = [wa,wb];

subplot(2,1,1);
hold on
plot(x,M)
title('Biegemoment')
xlabel('x')
ylabel('Moment')

subplot(2,1,2);
hold on
plot(x,w)
title('Durchbiegung')
xlabel('x')
ylabel('Durchbiegung')
weiter = input('weiter? 1=ja  0=nein')
end