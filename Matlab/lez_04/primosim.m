close all;clear;clc;

syms s;

num = sym2poly(10*(1+s*0));
den = sym2poly((s+1)^3);

sys = tf(num,den);
nyquist(sys);
figure();
outputs = sim('primo_simulink');
plot(outputs.uscita);