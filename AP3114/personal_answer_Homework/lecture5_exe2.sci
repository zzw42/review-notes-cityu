//Excercise 2
x=linspace(-4* %pi,4 *%pi,1000);
y=3* sin(x)./x +cos(x);
scf(2);
clf(2);
figure(2);
plot(x,y)
xs2png(2,"5_2.png")
