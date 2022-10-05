function [somma] = calcola_minori(n)
%CALCOLA_MINORI Calcola i numeri minori di 0.5
%   Dati n numeri casuali
a = rand(n,1);
soglia = 0.5;
minori = a < soglia;
somma = sum(minori);
disp("Ho trovato "+somma+" numeri minori di "+soglia+ " su "+n);

end

