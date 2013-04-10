%Monte Carlo (Random search) metodo realizacija.
%Sugeneruojame 100 atsitiktiniu tasku is intervalo  [a,b].
%Surandame kuriame taske funkcija igyja didziausia ir maziausia reiksme.
a = -10; 
b = 10;
n=2;%Dimensija (matavimas)
%k=70;%Tasku (vektoriu) skaicius
%Intervalas bus skaidomas i k1=70 ir k2=30
%intervalas bus mazinamas
x = a + (b-a) .* rand(70,n); %Perdaryti, kad generuotu dvimacius vektorius
for i=1:70
f(i)=sincos2(x(i,:));%Imame visa eilute, perduodame reiksmes x1, x2
end
%Ieskosime min ir max
[fMin,indMin]=min(f);
[fMax,indMax]=max(f);
%Surandame, kurioje eiluteje yra musu ieskoma reiksme
xMin=x(indMin,:);%paimama visa eilute su abiem reiksmem
xMax=x(indMax,:);%paimama visa eilute su abiem reiksmem
%Surastas reiksmes isvedame ekrane
fprintf('Surastas min=%6.4f, taske x=(%6.4f, %6.4f)\n',fMin,xMin(1),xMin(2));
fprintf('Surastas max=%6.4f, taske x=(%6.4f, %6.4f)\n',fMax,xMax(1),xMax(2));
grafikas2
%Skaiciuojame mazesniame intervale
a1=-5;
b1=5;
n=2;%dimensija(matavimas)
%k=30;
%Skaidome intervala i k1=70 ir k2=30
x=a1+(b1-a1).*rand(30,n)
for i=1:30
    f(i)=sincos2(x(i,:));
end
%Ieskosime min ir max
[fMin,indMin]=min(f);
[fMax,indMax]=max(f);
%Surandame, kurioje eiluteje yra musu ieskoma reiksme
xMin=x(indMin,:);%paimama visa eilute su abiem reiksmem
xMax=x(indMax,:);%paimama visa eilute su abiem reiksmem
%Surastas reiksmes isvedame ekrane
fprintf('Surastas min=%6.4f, taske x=(%6.4f, %6.4f)\n',fMin,xMin(1),xMin(2));
fprintf('Surastas max=%6.4f, taske x=(%6.4f, %6.4f)\n',fMax,xMax(1),xMax(2));
grafikas2


