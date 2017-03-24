% Chichinadze's Function
% Range of initial points: -30 <= xj <= 30 , j=1,2 
% Global minima: (x1,x2)=(6.189866586965680,0.5)
% f(x1,x2)=-42.94438701899098
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-10;
x1max=10;
x2min=-10;
x2max=10;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=x1(j).^2-12*x1(j)+8*sin(5*pi*x1(j)/2)+10*cos(pi*x1(j)/2)+11-(0.2*sqrt(5)/exp(0.5*((x2(i)-0.5).^2)));
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
mesh(x1,x2,f_tot);view(0,90);colorbar;set(gca,'FontSize',12);
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('X-Y Plane View','FontName','Times','FontSize',24,'FontWeight','bold');

figure(3)
mesh(x1,x2,f_tot);view(90,0);colorbar;set(gca,'FontSize',12);
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('X-Z Plane View','FontName','Times','FontSize',24,'FontWeight','bold');

figure(4)
mesh(x1,x2,f_tot);view(0,0);colorbar;set(gca,'FontSize',12);
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('Y-Z Plane View','FontName','Times','FontSize',24,'FontWeight','bold');