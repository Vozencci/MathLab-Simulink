clear
clc
close all

Fs = 1000
Ts = 1/Fs

z = tf('z',Ts)

H21 = 1/(1-0.5*(z^-1))
figure(1)
step(H21)

H22 = 1/(1-1*(z^-1))
figure(2)
step(H22)


H23 = 1/(1+0.5*(z^-1))
figure(3)
step(H23)


H24 = 1/(1-10*(z^-1))
figure(4)
step(H24)

