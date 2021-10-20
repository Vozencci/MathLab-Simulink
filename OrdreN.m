clear
clc
close all

Tau=3
omega_n=5
Xi=0.2
!(� faire varier pour Xi={0.2;0.5;1;10})

p=tf('p')
G=1/((1+((2*Xi)/omega_n)*p+(1/(omega_n^2))*p^2)*(1+Tau*p))

!graphe r�ponse indicielle de H
figure(1)
step(G)
title("R�ponse � un �chellon unit� d'un ordre N")
xlabel('temps')
ylabel('Amplitude (1)')

!diagramme de Bode en Gain et en Phase de H
figure(2)
bode(G)
title("Diagramme de Bode du syst�me d'ordre N")
xlabel('temps')