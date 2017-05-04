x = -2.1:0.1:2.1;
y = -6:0.1:6;
[X Y]=meshgrid(x,y);
Z = 80 * (Y.^2) .*(exp(-X.^2-0.3 * Y.^2));
//Plot
scf(1);
clf(1);
figure(1);
xset("colormap",jetcolormap(64));
surf(X,Y,Z);
xs2png(1,"6_1.png")
