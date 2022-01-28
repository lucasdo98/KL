function [daten] = quicksort(daten,links,rechts)

if links<rechts
    [daten,teiler]=teile(daten,links,rechts);
    daten=quicksort(daten,links,teiler-1);
    daten=quicksort(daten,teiler+1,rechts);
end

end

