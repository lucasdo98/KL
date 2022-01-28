%Erzeuge ein unsortiertes Array mit 1000 Zahlen
zeilenvektorUnsortiert = rand(1000,1);

%Tic - Toc misst die Zeit des Programmcodes

tic
%Sortiert die Zeilenvektoren in Bubblesort
sortiereZeilenvektorBubblesort = bubblesort(zeilenvektorUnsortiert);
toc

tic
%Sortiert die Zeilenvektoren in Quicksort
sortiereZeilenVektorQuicksort = quicksort(zeilenvektorUnsortiert,1,1000);
toc


%Erstelle nebeneinander die Plots
figure
subplot(1,3,1)
plot(zeilenvektorUnsortiert)

subplot(1,3,2)
plot(sortiereZeilenvektorBubblesort)

subplot(1,3,3)
plot(sortiereZeilenVektorQuicksort)
