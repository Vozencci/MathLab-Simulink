clear
clc
close all

omega_n=5
Xi=0.2
!(� faire varier pour Xi={0.2;0.5;1;10})

p=tf('p')
F=1/(1+((2*Xi)/omega_n)*p+(1/(omega_n^2))*p^2)

pole(F)

!graphe r�ponse indicielle de H
figure(1)
step(F)
title("R�ponse � un �chellon unit� d'un syst�me d'ordre 2")
xlabel('temps')
ylabel('Amplitude (1)')