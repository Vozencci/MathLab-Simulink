clear
clc
close all

w=5
X=[0.2 0.5 1 10]

p=tf('p')

H_2a=1/(1+(2*X(1)*p)/w+(p/w)^2)
H_2b=1/(1+(2*X(2)*p)/w+(p/w)^2)
H_2c=1/(1+(2*X(3)*p)/w+(p/w)^2)
H_2d=1/(1+(2*X(4)*p)/w+(p/w)^2)

figure(1)
step(H_2a,H_2b,H_2c,H_2d)
title("Réponse à un échellon unitaire d'un ordre 2")
xlabel('temps')
ylabel('Amplitude')
legend('Xi=0.2','Xi=0.5','Xi=1','Xi=10')
pole(H_2a)
pole(H_2b)
pole(H_2c)
pole(H_2d)