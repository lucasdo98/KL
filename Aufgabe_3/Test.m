R=100;
s=20;


r=R-s;
x=20;
Iy = pi/4*(R.^4 - r.^4)


disp(Iy)
plot(x,Iy,'-o','MarkerIndices',1:5:length(Iy))


