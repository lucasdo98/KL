[Messdaten]=readmatrix("Beschleunigungxyz (1).xls");
t=Messdaten (:,1);
ax=Messdaten(:,2);%Beschleunigungen
ay=Messdaten(:,3);
az=Messdaten(:,4);

vx=Integral(t,ax);%Geschwindigkeit
vy=Integral(t,ay);
vz=Integral(t,az);

sx=Integral(t,vx);%Weg
sy=Integral(t,vy);
sz=Integral(t,vz);



plot3(sx,sy,sz)
grid on;
xlabel('Weg in x-Richtung')
ylabel('Weg in y-Richtung')
zlabel('Weg in z-Richtung')
title('Auswertung Integral')


