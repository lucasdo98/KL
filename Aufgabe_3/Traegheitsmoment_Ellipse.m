function [Iy] = Traegheitsmoment_Ellipse(A,B,s)
% Traegheitsmoment_Ellipse
a=A-s
b=B-s

Iy=pi/4*(A*B^3-a.*b.^3)

end

