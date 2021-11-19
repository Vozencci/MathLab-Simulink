clear
clc
close all

Tau=3
w=5
X=[0.2 0.5 1 10]

p=tf('p')

H_Na=1/((1+((2*X(1))/w)*p+(1/(w^2))*p^2)*(1+Tau*p))
H_Nb=1/((1+((2*X(2))/w)*p+(1/(w^2))*p^2)*(1+Tau*p))
H_Nc=1/((1+((2*X(3))/w)*p+(1/(w^2))*p^2)*(1+Tau*p))
H_Nd=1/((1+((2*X(4))/w)*p+(1/(w^2))*p^2)*(1+Tau*p))

figure(1)
step(H_Na,H_Nb,H_Nc,H_Nd)
title("Réponse à un échellon unitaire d'un ordre N")
xlabel('temps')
ylabel('Amplitude')
legend('Xi=0.2','Xi=0.5','Xi=1','Xi=10')
figure(2)
bode(H_Na,H_Nb,H_Nc,H_Nd)
title("Diagramme de Bode d'un ordre N")
xlabel('temps')
ylabel('Amplitude')
legend('Xi=0.2','Xi=0.5','Xi=1','Xi=10')