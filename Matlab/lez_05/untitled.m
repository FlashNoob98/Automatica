close all; clear;clc;
syms s;

K = linspace(0.01,0.2,7);

num = sym2poly(-125*s*(s^2-0.2*s+0.01)*(s+20));
den = sym2poly((s^2+2*s+1)*(s^2+4*s+25));
sys1 = tf(num,den);

figure();
bode(sys1);
figure();
nyquist(sys1);

figure();
hold on;
grid on;

% for i=1:length(K)
%     out = sim('instabile');
%     plot(out.y);
% end

legend("K = "+K);
