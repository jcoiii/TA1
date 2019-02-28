clear all, close all, clc

m = 1;                  % Massa Diatas Pendulum
M = 5;                  % Massa Kereta
L = 2;                  % Panjang Pendulum
g = -10;                % Gravitasi 


tspan = [0 500];        %Waktu
y0 = [0; 0; 180; 0];
[t,y] = ode45(@(t,y)cartpend_Linear(y,m,M,L,g,0.1),tspan,y0);   %Integrasi menggunakan ODE45 (Linear)


plot(t,y)
legend('x','xdot','theta','thetadot')
% function dy = pendcart(y,m,M,L,g,d,u)