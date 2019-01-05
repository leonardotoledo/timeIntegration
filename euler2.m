function [x,y] = euler2(N,xo,xf,yo,dyo,d2y)
% EDO Algorithm

x(1) = xo; % Interval data.
y(1) = yo; % Known point.
dy(1) = dyo; % Known point.

h = (xf-x(1))/N;

for i = 2:N+1
  x(i) = x(1) + (i-1)*h;
  dy(i) = dy(i-1)+h*d2y(x(i-1),y(i-1));
  y(i) = y(i-1)+h*dy(i-1);
end
