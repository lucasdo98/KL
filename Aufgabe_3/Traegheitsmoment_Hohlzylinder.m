function [Iy] = Traegheitsmoment_Hohlzylinder(R,s)
%Berechnung_Traegkeitsmoment

r=R-s;
Iy = pi/4*(R^4 - r.^4)

end

