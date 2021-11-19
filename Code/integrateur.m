clear
clc
close all

K = [0.5 1 10]

p=tf('p')

for i = 1:3
    H=K/p
end

figure(1)
step(H(1),H(2),H(3))
title("Réponse à un échellon unitaire d'un intégrateur")
xlabel('temps')
ylabel('Amplitude')
legend('K=0.5','K=1','K=10')