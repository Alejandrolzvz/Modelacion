t = linspace(0, 2, 500);
wt = (t/2)*pi;
radius = (0.5*cos(2*pi*t/max(t)) + 0.5)  * 20;
c = @(r,th) [r.*cos(th); r.*sin(th)];
curve = c(radius,wt)+1;
figure(1)
plot3(curve(1,:), curve(2,:), t)
grid on
xlabel('x')
ylabel('y')
zlabel('t')
figure(2)
plot(t, curve(1,:),  t, curve(2,:),  t,radius)
grid
title('Components Of ‘plot3’ Plot')
legend('x = cos', 'y = sin', 'radius', 'Location','N')