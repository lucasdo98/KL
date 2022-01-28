%Zeilenvektor  von 0 bis 15 mit dem Abstand 0,3
a = 0:0.3:15;

 %Spaltenvektor von 1 bis 10 mit dem Abstand 0,5
 b = [1:0.5:10]';

 %Größe von und 𝑏 mittels der size Funktion
 sa=size(a);
 sb=size(b);

 %Zeilenvektor mit Einseinträgen der Länge 7
 zeins=ones(1,7);
 
 %Spaltenvektor mit Nulleinträgen der Länge 7
 snull= zeros(7,1);

 %Summe der Einträge des Vektors a und die Summe der Einträge des Vektors b
 suma= sum(a);
 suma2= a*ones(size(a))';
 sumb= sum(b);
 sumb2= b'* ones(size(b));

 %3x3 Matrix (g) mit Einsen auf der Diagonale
 g=eye(3);

 %4x3 Matrix (h) mit zufälligen Einträgen
 h= rand(4,3);

 %Produkt zwischen g und h
 p= h*g;

 %Zeilenvektor der Länge 7 und einen Zeilenvektor der Länge 9
 %Verbinden Sie die beiden Vektoren zu einem neuen Vektor der Länge 16
 c= 0:6;
 d= 0:8;
 cd= [c d];