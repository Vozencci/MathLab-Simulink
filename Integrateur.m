clear
clc
close all

K=0.5
!(� faire varier pour K={0.5;1;10})

p=tf('p')
H=K/(p^2)

!graphe r�ponse indicielle de H
figure(1)
step(H)
title("R�ponse � un �chellon unit� d'un int�grateur")
xlabel('temps')
ylabel('Amplitude (1)')