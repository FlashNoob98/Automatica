clear; close all;

syms s;
num = (100);
den = sym2poly((s+1)^3);
sys = tf(num,den);
bode(sys)
nyquist(sys)