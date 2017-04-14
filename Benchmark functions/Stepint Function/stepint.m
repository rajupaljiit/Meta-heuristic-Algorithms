x1min=-5.12;
x1max=5.12;
x2min=-5.12;
x2max=5.12;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=25+floor(x1(j));
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=25+floor(x1(j))+floor(x2(i));
    end
    
    fn_tot(j,:)=fn;

end

figure(1)
plot(x1,f1);set(gca,'FontSize',12);
xlabel('x','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('f(x)','FontName','Times','FontSize',20,'FontAngle','italic');
title('2D View','FontName','Times','FontSize',24,'FontWeight','bold');

figure(2)
meshc(x1,x2,fn_tot);colorbar;set(gca,'FontSize',12);shading interp;
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
set(get(gca,'xlabel'),'rotation',25,'VerticalAlignment','bottom');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
set(get(gca,'ylabel'),'rotation',-25,'VerticalAlignment','bottom');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('3D View','FontName','Times','FontSize',24,'FontWeight','bold');

figure(3)
mesh(x1,x2,fn_tot);
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('X-Y Plane View','FontName','Times','FontSize',24,'FontWeight','bold');

figure(4)
mesh(x1,x2,fn_tot);;
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('X-Z Plane View','FontName','Times','FontSize',24,'FontWeight','bold');

figure(5)
mesh(x1,x2,fn_tot);
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('Y-Z Plane View','FontName','Times','FontSize',24,'FontWeight','bold');