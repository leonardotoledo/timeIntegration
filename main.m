clear all
clc

%%%% INPUT DATA %%%%

du = @(x,y) exp(x)+x+1; % Differential equation.
a = @(x) exp(x)+x^3/6+x^2/2; % Analytical result.
to = 0; tf = 2*pi; yo = 0; N = 100; % Initial conditions and number of subintervals.

[x1,y1] = euler(N,to,tf,yo,du);
[x2,y2] = centered(N,to,tf,yo,du);
[x3,y3] = rungekutta(N,to,tf,yo,du);

compare(x1,y1,y2,y3,a);