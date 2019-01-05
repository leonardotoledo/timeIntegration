function [x,y] = euler(N,xo,xf,yo,dy)
% EDO Algorithm

x(1) = xo; % Interval data.
y(1) = yo; % Known point.

h = (xf-x(1))/N;

for i = 2:N+1
  x(i) = x(1) + (i-1)*h;
  y(i) = y(i-1)+h*dy(x(i-1),y(i-1));
end