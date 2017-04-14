clear
clc
warning off
    
x1min=-1;
x1max=1;
x2min=-1;
x2max=1;
x3min=-1;
x3max=1;
x4min=-1;
x4max=1;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
x3=x3min:(x3max-x3min)/R:x3max;
x4=x4min:(x4max-x4min)/R:x4max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=(exp^(x1(j))-x2(i))^4+100*(x2(i)-x3(j))^6+(tan(x3(j)-x4(i)))^4+x1(j)^8;
    end
        
    f_tot(j,:)=f;

end

figure(1)
meshc(x1,x2,f_tot);colorbar;set(gca,'FontSize',12);
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
set(get(gca,'xlabel'),'rotation',25,'VerticalAlignment','bottom');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
set(get(gca,'ylabel'),'rotation',-25,'VerticalAlignment','bottom');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('3D View','FontName','Times','FontSize',24,'FontWeight','bold');

figure(2)
meshc(x1,x2,f_tot);view(0,90);colorbar;set(gca,'FontSize',12);
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('X-Y Plane View','FontName','Times','FontSize',24,'FontWeight','bold');

figure(3)
meshc(x1,x2,f_tot);view(90,0);colorbar;set(gca,'FontSize',12);
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('X-Z Plane View','FontName','Times','FontSize',24,'FontWeight','bold');

figure(4)
meshc(x1,x2,f_tot);view(0,0);colorbar;set(gca,'FontSize',12);
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('Y-Z Plane View','FontName','Times','FontSize',24,'FontWeight','bold');