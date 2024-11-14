r=linspace(1,5,50);
phi=linspace(0,2*pi,30);
[r,phi]=meshgrid(r,phi);
x=r.*cos(phi);
y=r.*sin(phi);
z=1./r;

figure
surfl(x,y,-z)
shading interp
colormap(gray);
xlabel('x'); ylabel('y'); zlabel('z')
hold on


r=linspace(1,5,50);
phi=linspace(0,2*pi,30);
[r,phi]=meshgrid(r,phi);
x=r.*cos(phi);
y=r.*sin(phi);
z=1./r;

surfl(x,y,-z)
za=0
xa=(0.00353678 + 0.00031272 a t) cos(t) + (-0.00176839 t + a (0.00015636 - 0.0000781799 t^2)) sin(t)
ya=(-0.00176839 t + a (0.00015636 - 0.0000781799 t^2)) cos(t) + (-0.00353678 - 0.00031272 a t) sin(t)