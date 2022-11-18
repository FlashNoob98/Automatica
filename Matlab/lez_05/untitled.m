close all; clear;clc;
syms s;

%K = linspace(0.001,0.02,7);
K=1;


num = sym2poly(100+s*0);
den = sym2poly(s*(s+1)^2);

sys1 = tf(num,den);

figure();
bode(sys1);
figure();
nyquist(sys1);

m = margin(sys1)



figure();
hold on;
grid on;

% for i=1:length(K)
%     out = sim('instabile');
%     plot(out.y);
% end

legend("K = "+K);
