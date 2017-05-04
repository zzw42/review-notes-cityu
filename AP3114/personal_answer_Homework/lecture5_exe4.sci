function y=f(x)
    y=(x.^2 + 2.*x).*( %e.^(-x) )
endfunction

function y=g(x)
    y=sin(x./2)
endfunction

function y=h(x)
    y=f(x)-g(x)
endfunction

x=linspace(-2,5);

scf(4);
clf(4);
figure(4);
plot(x,f(x),"r",x,g(x),"b");
legend(["$f(x)$","$g(x)$"])
xs2png(4,"5_4.png");


a(1) = fsolve(-2,h);
a(2) = fsolve(-1,h);
a(3) = fsolve(2,h);
disp(a);

