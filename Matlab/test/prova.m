% Prova 21-12-14
clear; close all;

syms s;

num = {sym2poly(s+2), sym2poly(s)};
den = {sym2poly(s-2),sym2poly((s+2)*(s-2))};

G1.Num=num;
G1.Den=den;

sys = tf(G1.Num,G1.Den);
figure();
step(sys)
figure();
bode(sys)

t = 0:0.01:100;
u = [ones(1,length(t)); -2*cos(3*t)];

%U = laplace(u);

%A = tf(U);

figure();
[Y,T,X] = lsim(sys,u,t);
plot(T,Y);

A = [0 2; 2 0];
B = [1 1 ; 1 0];
C = [1 0];
D = [1 0];
ltiSys = ss(A,B,C,D);
AA = tf(ltiSys);

figure();
[YY,TT,XX] = lsim(AA,u,t);
plot(TT,YY);

figure()
bode(AA)

