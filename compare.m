function compare(x,y1,y2,y3,a)

fprintf('x-value   analytical  y1-value  y1-error  y2-value  y2-error  y3-value  y3-error\n'); % Printing the results.

for i=1:length(x)
  r(i) = a(x(i)); % Analytical value calculation.
  o1(i) = abs(r(i)-y1(i)); % Error-1 value calculation.
  o2(i) = abs(r(i)-y2(i)); % Error-2 value calculation.
  o3(i) = abs(r(i)-y3(i)); % Error-3 value calculation.
  
  fprintf('%.2f      %.4f    %.4f    %.4f    %.4f    %.4f    %.4f    %.4f\n',x(i),r(i),y1(i),o1(i),y2(i),o2(i),y3(i),o3(i));
end

graph1 = subplot(2,2,1); % top subplot
  plot(graph1,x,y1,'k','LineStyle','-.'); % FDM result
  hold on;
  plot(graph1,x,r,'r','LineStyle','--'); % Analytical result
  title(graph1,'y1-results');
  xlabel(graph1,'x');
  ylabel(graph1,'function y');
legend('FDM','Analytical','Location','southeast');

graph2 = subplot(2,2,2); % bottom subplot
  plot(graph2,x,y2,'k','LineStyle','-.'); % FDM result
  hold on;
  plot(graph2,x,r,'r','LineStyle','--'); % Analytical result
  title(graph2,'y2-results');
  xlabel(graph2,'x');
  ylabel(graph2,'function y');
legend('FDM','Analytical','Location','southeast');

graph3 = subplot(2,2,3); % top subplot
  plot(graph3,x,y3,'k','LineStyle','-.'); % FDM result
  hold on;
  plot(graph3,x,r,'r','LineStyle','--'); % Analytical result
  title(graph3,'y3-results');
  xlabel(graph3,'x');
  ylabel(graph3,'function y');
legend('FDM','Analytical','Location','southeast');

graph4 = subplot(2,2,4); % bottom subplot
  plot(graph4,x,o1,'r','LineStyle','-.'); % Error-1 result
  hold on;
  plot(graph4,x,o2,'b','LineStyle','-.'); % Error-2 result
  hold on;
  plot(graph4,x,o3,'gr','LineStyle','-.'); % Error-3 result
  hold on;
  title(graph4,'error results');
  xlabel(graph4,'x');
  ylabel(graph4,'error');
legend('Error-1','Error-2','Error-3','Location','southeast');