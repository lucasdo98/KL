function [Iy] = Traegheitsmoment_Kasten(B,H,s)
b=B-2*s;   %Berechnung von b (Innere Breite)
h=H-2*s;   %Berechnung von h (Innere Hoehe)

Iy = (B*H^3-b*h^3)/12;

GehInRoehre = Roehre(B,H,s)

end

