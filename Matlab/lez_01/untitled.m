
%Inserisci n, restituisci n numeri casuali, conta quanti sono < 0.5
clear; close; clc;

B = [4 0]; % 4s
A = [1 0 5 0 -36]; %s^4 + 5s^2 -36

[R, P, K] = residue(B,A);
