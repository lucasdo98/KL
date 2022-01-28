B = 20;
H = 10;
s = 2;

b=B-2*s;   %Berechnung von b
h=H-2*s;   %Berechnung von h

Iy = (B*H^3-b*h^3)/12  %Ausgabe: Berechnung       (Ohne Semikolon)
Iy = (B*H^3-b*h^3)/12; %Ausgabe: TestfunktionEins (Mit Semikolon)

