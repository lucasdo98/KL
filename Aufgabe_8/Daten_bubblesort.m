function [daten] = tausche(daten,i,j)
for i=length(daten):-1:2;
for j=1:1:i-1;

if daten(j)>daten(j+1)
    daten=tausche(daten,j,j+1);

end
end
end
