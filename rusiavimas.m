clc
f = 100*rand(60,1) % Atsitiktiniu 60 reiksmiu
x = rand(60,2)
[f_sort, f_sort_ind] = sort(f) % Surusiuoja visas 60 reiksm.
x_sort = x(f_sort_ind,:)
f_sort_10 = f_sort(1:10) % Isrenka 10 is surusiuotu
x_sort_10 = x_sort(1:10,:) % Isrenka 10 is surusiuotu