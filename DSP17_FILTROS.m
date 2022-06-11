clear all;
close all;
clc;

%Extraemos el audio
[entrada, FS]=audioread("archivoPrueba_CI.wav");
x=entrada(:,1);%Vectorizar a uno

%%ORIGINAL
%Mostramos la se�al
figure()
subplot(2,1,1)
plot(x);
title('Audio');
%Reproducimos la original
%sound(x,FS);
%Espectro de la se�al
X = fftshift(fft(x));
F= -FS/2:FS/length (x): FS/2 - FS /length(x);
%Mostramos el espectro de la se�al
subplot(2,1,2)
plot(F,abs(X));
title('Espectro')