clear
clc
close all

K = [0.5 1 10]
Tau = 1
p=tf('p')

for i = 1:3
    H_1=K/(1+Tau*p)
end

figure(1)
step(H_1(1),H_1(2),H_1(3))
title("Réponse à un échellon unitaire d'un premier ordre")
xlabel('temps')
ylabel('Amplitude')
legend('K=0.5','K=1','K=10')

figure(2)
bode(H_1(1),H_1(2),H_1(3))
title("Diagramme de Bode d'un système du premier ordre")
xlabel('pulsation')
ylabel('gain et phase')
legend('K=0.5','K=1','K=10')