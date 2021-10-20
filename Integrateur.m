clear
clc
close all

K=0.5
!(à faire varier pour K={0.5;1;10})

p=tf('p')
H=K/(p^2)

!graphe réponse indicielle de H
figure(1)
step(H)
title("Réponse à un échellon unité d'un intégrateur")
xlabel('temps')
ylabel('Amplitude (1)')