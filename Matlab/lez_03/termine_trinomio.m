clear; close all; clc;

wn = 1;
zita_vet=linspace(0.01,1,10);

figure()
hold on;
grid on;

for i = 1:length(zita_vet)
    zita = zita_vet(i);
    systf = tf(1,[1/wn^2, 2*zita/wn, 1]);
    bode_as(systf);
end

legend("zita = "+zita_vet);

