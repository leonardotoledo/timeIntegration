clear all
clc

%%%% INPUT DATA %%%%

d2y = @(x,y) exp(x)+x+1; % Differential equation.
a = @(x) exp(x)+x^3/6+x^2/2; % Analytical result.
to = 0; tf = 1; yo = 1; dyo = 1; N = 10; % Initial conditions and number of subintervals.

[x1,y1] = euler2(N,to,tf,yo,dyo,d2y);
[x2,y2] = centered2(N,to,tf,yo,dyo,d2y);
[x3,y3] = rungekutta2(N,to,tf,yo,dyo,d2y);

compare(x1,y1,y2,y3,a);