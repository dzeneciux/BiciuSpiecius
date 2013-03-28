x1=-10:0.2:10;%Padaryti, kad sugeneruotu dvimaciu tasku tinkleli
x2=x1;
[X1,X2]=meshgrid(x1,x2);
fsincos2=sincos2(x);
mesh(X1,X2,fsincos2)%plote netiks, rikia naudoti komandas surf, mesh
