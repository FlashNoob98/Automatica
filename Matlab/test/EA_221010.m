clear; close all; clc;


%% Esercizio 1
syms s k;


%num = sym2poly()
A = [0.5*k-1, -0.5*k;
    -0.5*k, 0.5*k-1];
B = eye(2);
C = [1 -1];
D = 0;

k =1;
Ak = eval(A);
ltisys = ss(Ak,B,C,D);
systf= tf (ltisys);


%% Esercizio 1 again
syms s k;
A = [0.5*k-1 -0.5*k;
    -0.5*k 0.5*k-1];
B = eye(2);
C = [1 -1];

eAt = s*eye(2)-A
deAt = det(eAt)
Ws = inv(eAt);
Gs = C*Ws*B;