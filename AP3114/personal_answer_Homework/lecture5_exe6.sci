function y=f(x)
    y=(1/8)* x.^2-8
endfunction


scf(6);
clf(6);
figure(6);
x=linspace(-8,8);
y=linspace(0,2* %pi);
plot(x,f(x),"r")
plot(10*cos(y),10*sin(y))
plot(-4,4,'pr','MarkerSize',12);
plot(4,4,'pr','MarkerSize',12);
legend("mouth","head","eyes")
title("MatLab Art")
xs2png(6,"5_6.png");
