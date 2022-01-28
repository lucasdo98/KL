[xlsfile,path2xlsx]=uigetfile('*.xlsx','Bitte Datei auswählen');

Messdaten = readmatrix(fullfile(path2xlsx,xlsfile));
eps=Messdaten(:,1)/100; %Dehnung
sig=Messdaten(:,2); %Spannung

subplot(1,2,1)
plot(eps,sig)
grid on
xlabel('Dehnung')
ylabel('Spannung')
title('Spannungs-Dehnungsdiagramm')

disp('Grenzen der Auswertung')
asig=input('Anfangswert der Spannung asig=');
esig=input('Endwert der Spannung esig=');

for i=1:1:length(sig)
 
 if sig(i)<asig
     ai=i;
 end
 if sig(i)<esig
     ei=i;
 end
 
   
end

x=eps(ai:ei);
y=sig(ai:ei);




xi2=sum(x.^2);
xi=sum(x);
xiyi=sum(x.*y);
n=length(x);
yi=sum(y);

M=[xi2,xi;xi,n];
v=[xiyi;yi];

erg= M\v;

%Geradengleichungen
disp('E-Modul')
E=erg(1)
b=erg(2);

yg=E*x+b;

subplot(1,2,2)
plot(x,y,x,yg);
xlabel('Dehnung')
ylabel('Spannung')
title('Linearer Bereich')
grid on

legend('Messwerte','Ausgleichsgerade')
