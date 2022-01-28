weitereAbfrage = 1    % Variable muss heißen wie bei While-Schleife! Immer auf 1 setzen!

while weitereAbfrage   % Variable muss heißen wie unten

Profiltyp = input('Profiltyp ?','s')

s= input('Materialstärke s= ');

if (Profiltyp == 'K' || 'k') 
    H = 30;
    B = 20;
    Iy = Traegheitsmoment_Kasten(B,H,s);
elseif (Profiltyp == 'H')
    R = 30;
    Iy = Traegheitsmoment_Hohlzylinder(R,s);
elseif (Profiltyp == 'E')
    A = 30;
    B = 20;
    Iy = Traegheitsmoment_Ellipse(A,B,s);
end


L= input ('Balkenlänge L=');
F= input ('Kraft F=');
E= input ('E-Modul E=');

x= 0:1:L;

M=F*(x-L);
w=((F*L.^3)/(6*E*Iy))*((-x.^3/L.^3)+3*(x.^2/L.^2));

subplot(2,1,1);
plot(x,M)
title('Biegemoment')
xlabel('x')
ylabel('Moment')

subplot(2,1,2);
plot(x,w)
title('Durchbiegung')
xlabel('x')
ylabel('Durchbiegung')

weitereAbfrage=input('weitere Abfrage? 1=ja  0=nein')  % IMMER Variable deklarieren. 1 (True) = Schleife nochmal durchlaufen, 0 (False) = Schleife NICHT nochmal durchlaufen

end    % Nach While-Schleife immer "end" einfügen!

