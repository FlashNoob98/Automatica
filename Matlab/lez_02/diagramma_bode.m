% Calcola diagramma di bode
clear; close all;
syms s;

num = 10*(s+5);
den = (s+1)*(s+10);

numG1 = sym2poly(num);
denG1 = sym2poly(den);

G1 = tf(numG1,denG1);

bode(G1);
grid;
