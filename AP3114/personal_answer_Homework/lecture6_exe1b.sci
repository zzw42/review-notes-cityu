x = linspace(-%pi,%pi,50);
y = linspace(-%pi,%pi,50);
figure(1);
plot3d(x,y,sin(x')*cosh(y));
xs2png(1,"6_2.png")
