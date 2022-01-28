function [daten,i] = teile(daten,links,rechts)

i = links;
j = rechts-1;
pivot=daten(rechts);


while i<j

    while i<rechts && daten(i)<pivot
        i=i+1;
    end

    while j>links && daten(j)>=pivot
        j=j-1;
    end

    if i<j
        daten=tausche(daten,i,j);
    end

end

if daten(i)>pivot
    daten=tausche(daten,i,rechts);
end