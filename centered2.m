function [x,y] = centered2(N,xo,xf,yo,dyo,d2y)
% EDO Algorithm

x(1) = xo; % Interval data.
y(1) = yo; % Known point.
dy(1) = dyo; % Known point.

h = (xf-x(1))/N;

% Euler pre-processing:
x(2) = x(1) + h;
dy(2) = dy(1) + h*d2y(x(1),y(1));
y(2) = y(1) + h*dy(1);

for i = 3:N+1
  x(i) = x(1) + (i-1)*h;
  dy(i) = dy(i-2)+2*h*d2y(x(i-1),y(i-1));
  y(i) = y(i-2)+2*h*dy(i-1);
end
