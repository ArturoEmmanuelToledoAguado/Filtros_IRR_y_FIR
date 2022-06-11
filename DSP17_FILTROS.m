clear all;
close all;
clc;

%Extraemos el audio
[entrada, FS]=audioread("archivoPrueba_CI.wav");
x=entrada(:,1);%Vectorizar a uno