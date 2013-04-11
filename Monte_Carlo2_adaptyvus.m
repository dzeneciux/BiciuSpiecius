%Monte Carlo (Random search) metodo realizacija.
%Sugeneruojame 100 atsitiktiniu tasku is intervalo  [a,b].
%Surandame kuriame taske funkcija igyja didziausia ir maziausia reiksme.
a1 = -10; % Pradine sritis
b1 = 10;
n=2;%Dimensija (matavimas)
k1=50;%Tasku (vektoriu) skaicius, generuojame 50 tasku
%Intervalas bus skaidomas i k1=50 ir k2=50
%intervalas bus mazinamas
x1 = a1 + (b1-a1) .* rand(k1,n); %Perdaryti, kad generuotu dvimacius vektorius
f1=[];
for i=1:k1
f1(i)=sincos2(x1(i,:));%Imame visa eilute, perduodame reiksmes x1, x2
end
%Ieskosime min ir max
[fMin1,indMin1]=min(f1);
%[fMax1,indMax1]=max(f1);
%Surandame, kurioje eiluteje yra musu ieskoma reiksme
xMin1=x1(indMin1,:);%paimama visa eilute su abiejomis reiksmemis
%xMax1=x1(indMax1,:);%paimama visa eilute su abiejomis reiksmemis
%Surastas reiksmes isvedame ekrane
fprintf('Surastas min1=%6.4f, taske x1=(%6.4f, %6.4f)\n',fMin1,xMin1(1),xMin1(2));
%fprintf('Surastas max1=%6.4f, taske x1=(%6.4f, %6.4f)\n',fMax1,xMax1(1),xMax1(2));
%grafikas2

hold on;
scatter(x1(:,1),x1(:,2),'b.');
scatter(xMin1(1),xMin1(2),'r*');
text(xMin1(1)+0.3,xMin1(2),num2str(fMin1));
rectangle('Position',[-10.0,-10.0,20.0,20.0],...
    'Linewidth',5,'Linestyle','--')

%Skaiciuojame mazesniame intervale

a2=xMin1(1)-4;
b2=xMin1(1)+4;
a3=xMin1(2)-4;
b3=xMin1(2)+4;

%n=2;%dimensija(matavimas)
k2=50;%likusiu tasku (vektoriu skaicius)
x2(:,1)=a2+(b2-a2).*rand(k2,1);
x2(:,2)=a3+(b3-a3).*rand(k2,1);
f2=[];
for i=1:k2
    f2(i)=sincos2(x2(i,:));
end
%Ieskosime min ir max
[fMin2,indMin2]=min(f2);
%[fMax2,indMax2]=max(f2);
%Surandame, kurioje eiluteje yra musu ieskoma reiksme
xMin2=x2(indMin2,:);%paimama visa eilute su abiejomis reiksmemis
%xMax2=x2(indMax2,:);%paimama visa eilute su abiejomis reiksmemis
%Surastas reiksmes isvedame ekrane
fprintf('Surastas min2=%6.4f, taske x2=(%6.4f, %6.4f)\n',fMin2,xMin2(1),xMin2(2));
%fprintf('Surastas max2=%6.4f, taske x2=(%6.4f, %6.4f)\n',fMax,xMax(1),xMax(2));
%grafikas2

scatter(x2(:,1),x2(:,2),'g.');
scatter(xMin2(1),xMin2(2),'r*');
text(xMin2(1)+0.3,xMin2(2),num2str(fMin2));
rectangle('Position',[xMin1(1)-4,xMin1(2)-4,8.0,8.0],...
    'Linewidth',5,'Linestyle','--')

if ((xMin(1)-4)>-10)&((xMin(1)+4)>10)&((xMin(2)-4)>10)&((xMin(2)+4)>1)




