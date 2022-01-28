% Bubblesort-Funktion
function [daten] = bubblesort( daten )   % Daten = zeilenvektorUnsortiert aus testsort.m


% Durchläuft den Zeilenvektor von 1 bis Anzahl der Daten (Also 1000)
for i = 1:length(daten)
    % Gehe bis zum letzten unsortierten Element vor.
    for j = 1:length(daten)-i
        % Wenn Elemente in der falschen Reihenfolge sind, tausche Sie aus.
        if(daten(j)>daten(j+1))
            temp = daten(j+1);
            daten(j+1) = daten(j);
            daten(j) = temp;
        end
    end
end

end