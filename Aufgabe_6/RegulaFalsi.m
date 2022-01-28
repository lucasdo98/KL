%Berechnung Regula Falsi

n=Regula_Falsi(@sin,1.0,5.5,1e-8);

disp(n)


x=1.0:0.1:5.5;
y=sin(x);

figure
plot(x,y,'r',n,sin(n),'g*');
grid on 


n=Regula_Falsi(@fx,0.1,2,1e-8);

disp(n)

x=0.1:0.1:2;
y=fx(x);

figure
plot(x,y,'r',n,fx(n),'g*');
grid on 