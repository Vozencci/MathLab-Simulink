clear
clc
close all

Fs = 1000
Ts = 1/Fs

z = tf('z',Ts)
H1 = 1/(1-(z^-1))

figure(1)
step(H1)