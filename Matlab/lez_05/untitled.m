close all; clear;clc;
syms s;

K = linspace(0.01,0.2,7);

num = sym2poly(100000*(s*3)*(s+9));
den = sym2poly(3*s^2*(s+1)*(s+32)*(s+40));
sys1 = tf(num,den);

figure();
bode(sys1);
figure();
nyquist(sys1);

figure();
hold on;
grid on;

for i=1:length(K)
out = sim('instabile');
plot(out.y);
end

legend("K = "+K);
