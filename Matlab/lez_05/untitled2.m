close all; clear;clc;
syms s ;

% K = linspace(0.01,0.2,2);
K = 1*0.016;

num = sym2poly(s*100+s*0);
den = sym2poly((s+1)^2);


sys1 = tf(num,den);

figure();
bode(sys1);
grid on;
figure();
nyquist(sys1);

figure();
%bode_as(sys1);

<<<<<<< HEAD
step(sys1)
=======
figure();
nichols(sys1);

figure();
impulse(sys1)



M = margin(sys1);
T = feedback(sys1,1);

figure();
step(T);

R = roots(T.Denominator{1});
>>>>>>> refs/remotes/origin/main

figure();
hold on;
grid on;

<<<<<<< HEAD
% for i=1:length(K)
% out = sim('instabile');
% plot(out.y);
% end
=======
out = sim('instabile');
plot(out.y);

for i=1:length(K)
out = sim('instabile');
plot(out.y);
end
>>>>>>> refs/remotes/origin/main

% legend("K = "+K);
