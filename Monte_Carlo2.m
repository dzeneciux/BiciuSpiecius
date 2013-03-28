%Monte Carlo (Random search) metodo realizacija.
%Sugeneruojame 100 atsitiktiniu tasku is intervalo  [a,b].
%Surandame kuriame taske funkcija igyja didziausia ir maziausia reiksme.
a = -10; 
b = 10;
n=2;%Dimensija (matavimas)
k=100;%Tasku (vektoriu) skaicius
x = a + (b-a) .* rand(k,n);%Perdaryti, kad generuotu dvimacius vektorius
f=[];
for i=1:k
f(i)=sincos2(x(i,:));
end
[fMin,indMin]=min(f);
[fMax,indMax]=max(f);
xMin=x(indMin,:);
xMax=x(indMax,:);
fprintf('Surastas min=%6.4f, taske x=(%6.4f, %6.4f)\n',fMin,xMin(1),xMin(2));
fprintf('Surastas max=%6.4f, taske x=(%6.4f, %6.4f)\n',fMax,xMax(1),xMax(2));
grafikas2




