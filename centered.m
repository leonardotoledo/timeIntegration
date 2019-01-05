function [x,y] = centered(N,xo,xf,yo,dy)
% EDO Algorithm

x(1) = xo; % Interval data.
y(1) = yo; % Known point.

h = (xf-x(1))/N;

% Euler pre-processing:
x(2) = x(1) + h;
y(2) = y(1) + h*dy(x(1),y(1));

for i = 3:N+1
  x(i) = x(1) + (i-1)*h;
  y(i) = y(i-2)+2*h*dy(x(i-1),y(i-1));
end