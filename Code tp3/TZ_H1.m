clear
clc
close all

Fs = 1000
Ts = 1/Fs

z = tf('z',Ts)
H1z = 1/(1-(z^-1))

figure(1)
step(H1z)
title("Réponse à un échellon unitaire d'un intégrateur dans le domaine z")
xlabel('temps')
ylabel('Amplitude')