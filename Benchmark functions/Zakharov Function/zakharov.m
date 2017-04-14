x1min=-5;
x1max=10;
x2min=-5;
x2max=10;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
for j=1:length(x1)
    
   
    f1(j)=x1(j).^2+(0.5*x1(j)).^2+(0.5*x1(j)).^4;
    
 
    for i=1:length(x2)
        fn(i)=(x1(j).^2+x2(i).^2)+((0.5*1*x1(j)+0.5*2*x2(i)).^2)+((0.5*1*x1(j)+0.5*2*x2(i)).^4);
    end
    
    fn_tot(j,:)=fn;
 
end
 
figure(1)
plot(x1,f1);set(gca,'FontSize',12);
xlabel('x','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('f(x)','FontName','Times','FontSize',20,'FontAngle','italic');
title('2D View','FontName','Times','FontSize',24,'FontWeight','bold');
 
figure(2)
meshc(x1,x2,fn_tot);colorbar;set(gca,'FontSize',12);
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
set(get(gca,'xlabel'),'rotation',25,'VerticalAlignment','bottom');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
set(get(gca,'ylabel'),'rotation',-25,'VerticalAlignment','bottom');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('3D View','FontName','Times','FontSize',24,'FontWeight','bold');
 
