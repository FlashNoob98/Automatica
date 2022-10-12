close all; clear; clc;

syms s;
num = sym2poly(1000*(s+0.5));
den = sym2poly(s*(s^2+10*s+100));
systf = tf(num,den);
bode(systf);


