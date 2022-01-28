daten=rand(1,100);
links= -10:1:0;
rechts=0:1:10;
sortiert=quicksort(daten,links,rechts);

subplot(2,1,1)
bar(daten)

subplot(2,1,2)
bar(sortiert)