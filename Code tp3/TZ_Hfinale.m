clear
clc
close all

Fs = 1000
Ts = 1/Fs

a = 0.2
b = 0

z = tf('z',Ts)

Hfinale = a/(1-b*(z^-1))

figure(1)
step(Hfinale)
figure(2)
bode(Hfinale)