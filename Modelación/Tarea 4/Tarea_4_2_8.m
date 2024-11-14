[X,Y] = meshgrid(0:0.05:4,0:0.05:4);
Z = sin(X.*Y);
figure
contour(X,Y,Z,50)
quiver(X2,Y2,U,V)


[X2,Y2] = meshgrid(0:0.25:4,0:0.25:4);
Z = sin(X2.*Y2);
U = Y2.*cos(X2.*Y2);
V = X2.*cos(X2.*Y2);
W = zeros(size(X2));
hold on