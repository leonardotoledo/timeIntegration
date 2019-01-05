function [x,y] = rungekutta2(N,xo,xf,yo,dyo,d2y)

% Runge-Kutta EDO Algorithm
c1 = 1/2; c2 = 1/2; a2 = 1; % Improved Euler method.

x(1) = xo; y(1) = yo; dy(1) = dyo; % Interval starting point.

h = (xf-x(1))/N; % Interval calculation.

% Calculation of y and x values
for i = 2:N+1

  x(i) = x(1) + (i-1)*h; % x value increasing step
  
  L1 = d2y(x(i-1),dy(i-1)); % k1-constant calculation
  arg1 = x(i-1)+h*a2; % 1st argument for k2-constant
  arg2 = dy(i-1)+h*a2*L1; % 2nd argument for k2-constant
  L2 = d2y(arg1,arg2); % k2-constant calculation
  
  dy(i) = dy(i-1)+h/2*(L1+L2);
  
  K1 = dy(i-1);
  arg1 = x(i-1)+h*a2; % 1st argument for k2-constant
  arg2 = y(i-1)+h*a2*K1; % 2nd argument for k2-constant
  
  %%%%% NEW RUN OF RUNGE-KUTTA 2 TO FIND K2 %%%%%
    
     m1 = d2y(x(i-1),dy(i-1));
     arg1 = x(i-1)+h*a2; % 1st argument for k2-constant
     arg2 = dy(i-1)+h*a2*m1; % 2nd argument for k2-constant
     m2 = d2y(arg1,arg2);
     
     dY = dy(i-1)+h/2*(m1+m2);
  
  %%%%% END %%%%%
    
  K2 = dY; % k2-constant calculation
  
  y(i) = y(i-1)+h/2*(K1+K2);
  
end