function [Iy] = Traegheitsmoment_Kasten(B,H,s)

b=B-2*s;%Berechnung von b
h=H-2*s;%Berechnung von h

Iy = (B.*H.^3-b.*h.^3)/12;

end

