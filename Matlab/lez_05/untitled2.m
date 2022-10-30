close all; clear;clc;
syms s;

K = linspace(0.01,0.2,7);

num = sym2poly(-0.5*(s-100));
den = sym2poly(s^2+3.2*s+4);

sys1 = tf(num,den);

figure();
bode(sys1);
grid on;
figure();
nyquist(sys1);

figure();
bode_as(sys1);


figure();
hold on;
grid on;

for i=1:length(K)
out = sim('instabile');
plot(out.y);
end

legend("K = "+K);
