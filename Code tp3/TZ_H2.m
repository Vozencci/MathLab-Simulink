clear
clc
close all

Fs = 1000
Ts = 1/Fs

z = tf('z',Ts)

H1za = 1/(1-0.5*(z^-1))
H1zb = 1/(1-1*(z^-1))
H1zc = 1/(1+0.5*(z^-1))
H1zd = 1/(1-10*(z^-1))

figure(1)
step(H1za,H1zb,H1zc,H1zd)
title("Réponse à un échellon unitaire d'un premier ordre dans le domaine z")
xlabel('temps')
ylabel('Amplitude')
legend('a=0.5','a=1','a=-0.5','a=10')