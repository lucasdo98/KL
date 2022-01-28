function [daten] = tausche(daten,i,j)
temp=daten(i)
daten(i)=daten(j)
daten(j)=temp
end

