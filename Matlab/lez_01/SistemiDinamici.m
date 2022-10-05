%% Rappresentazioni di sistemi LTI con matrici ABCD
% Sistema massa molla smorzatore
% x1 = s
% x2 = s.
%
% x1. = x2
% x2. = -k/mx1 - b/m x2 + u/m
% y = x1
% u = F

close all; clear; clc;

%% Definizione delle costanti
k = 0.1;    %[N/m]
b = 0.05;   %[N/sm]
m = 1;      %[kg]
F = 1;      %[N]

%% Definizione del sistema
A = [0 1; -k/m -b/m];
B = [0 1/m]';
C = [1 0];
D = 0;
%Ts = 250;

sys = ss(A,B,C,D,'StateName',{'Position' 'Velocity'},'InputName','Force');

step(sys); %Calcola risposta al gradino

autoValori = eig(A); %Autovalori
w_n = abs(autoValori(1)); % Pulsazione naturale
zita = -real(autoValori(1)/w_n); %Smorzamento
s = exp(-pi*zita/sqrt(1-zita^2)); %Sovraelongazione

[wn,zeta,p] = damp(sys); %come prima ma calcolato da matlab

tau = -1/real(autoValori(1)); % Costante di tempo

%% Passaggio nel dominio di Laplace

systf = tf(sys);
systf2 = ss2tf(A,B,C,D);

step(systf);
%step(systf2);
