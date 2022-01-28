Profiltyp = input('Profiltyp ?','s')

s= input('Materialstärke s= ');
Iy = 0;
switch Profiltyp
    case {'K', 'k'}
    H = input ('Höhe H =');
    B = input ('Breite B =');
    Iy = Traegheitsmoment_Kasten(B,H,s);
    case 'H'
    R = input ('Radius R =');
    Iy = Traegheitsmoment_Hohlzylinder(R,s);
    case 'E'
    A = input ('Halbachse A =');
    B = input ('Halbachse B =');
    Iy = Traegheitsmoment_Ellipse(A,B,s);
end


disp(Iy)

plot(s,Iy,'r-o')

title('Iy in Abhängkeit von s');
xlabel('Materialstärke s in mm');
ylabel('Flächenträgheitsmoment Iy in mm^4');
