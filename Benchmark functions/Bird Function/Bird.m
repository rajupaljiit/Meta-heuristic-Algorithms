xmin=-4;
xmax=4;
R=100000; % steps resolution
x=xmin:(xmax-xmin)/R:xmax;
 
for i=1:length(x)
    f(i)=(2*x(i)^4+x(i)^2+2)/(x(i)^4+1);
end
 
plot(x,f,'r','LineWidth',2);grid;set(gca,'FontSize',12);axis([-4 4 -0.5 3.5]);
xlabel('x','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('f(x)','FontName','Times','FontSize',20,'FontAngle','italic');