clear
clc
close all

p=tf('p')

K = [0.5 1 10]

for i = 1:3
    H_REMASTER=K/(p^2)
    figure(1)
    step(H_REMASTER)
end