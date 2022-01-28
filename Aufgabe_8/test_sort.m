daten=rand(1,100);

sortiert=bubblesort(daten);

subplot(2,1,1)
bar(daten)

subplot(2,1,2)
bar(sortiert)