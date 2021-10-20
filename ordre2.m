clear
clc
close all

omega_n=5
Xi=0.2
!(à faire varier pour Xi={0.2;0.5;1;10})

p=tf('p')
F=1/(1+((2*Xi)/omega_n)*p+(1/(omega_n^2))*p^2)

pole(F)

!graphe réponse indicielle de H
figure(1)
step(F)
title("Réponse à un échellon unité d'un système d'ordre 2")
xlabel('temps')
ylabel('Amplitude (1)')