clear
clc
close all

K = 2
Tau = 3
a = [-0.2 -0.3 1.5]
p=tf('p')

for i = 1:3
    H_1z=K*((1+a*p)/(1+Tau*p))
end

figure(1)
step(H_1z(1),H_1z(2),H_1z(3))
title("Réponse à un échellon unitaire d'un premier ordre avec zero")
xlabel('temps')
ylabel('Amplitude')
legend('a=-0.2','a=-0.3','a=1.5')

figure(2)
bode(H_1z(1),H_1z(2),H_1z(3))
title("Diagramme de Bode d'un système du premier ordre avec zero")
xlabel('pulsation')
ylabel('gain et phase')
legend('a=-0.2','a=-0.3','a=1.5')