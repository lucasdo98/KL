%Eva Dreher
B=20;       %Variablen-Deklaration --> B mit irgendeiner Zahl
H=40;       %Variablen-Deklaration --> H mit irgendeiner Zahl
s=2;        %Variablen-Deklaration --> s mit irgendeiner Zahl

b=B-2*s;    %Berechnung von b
h=H-2*s;    %Berechnung von h

Iy = (B*H^3-b*h^3)/12  %Ausgabe: Berechnung           (Ohne Semikolon)
Iy = (B*H^3-b*h^3)/12; %Ausgabe: "" --> Keine Ausgabe (Mit Semikolon)