function [x,y] = rungekutta(N,xo,xf,yo,dy)
% Runge-Kutta EDO Algorithm

c1 = 1/2; c2 = 1/2; a2 = 1; % Improved Euler method.

x(1) = xo; y(1) = yo; % Interval starting point.

h = (xf-x(1))/N; % Interval calculation.

% Calculation of y and x values
for i = 2:N+1
  x(i) = x(1) + (i-1)*h; % x value increasing step
  k1 = dy(x(i-1),y(i-1)); % k1-constant calculation
  arg1 = x(i-1)+h*a2; % 1st argument for k2-constant
  arg2 = y(i-1)+h*a2*k1; % 2nd argument for k2-constant
  k2 = dy(arg1,arg2); % k2-constant calculation
  y(i) = y(i-1)+h/2*(k1+k2); % y value increasing step
end