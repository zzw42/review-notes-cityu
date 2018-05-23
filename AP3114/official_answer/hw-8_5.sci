// Q5a Bisection method
// For reference, we compute the roots using root()
exer1 = roots(poly([-10 0 4 1],'s','coeff'));
mprintf("For reference, we first compute the roots using root(): \n")
disp(string(exer1));
// Define Bisection Method
function [x]=bisection(a, b, f)
N=100; eps=1.e-4; //define max number of iteration and the error
if (f(a)*f(b)>0) then
error('no root possible f(a)*f(b)>0')
abort;
end
if (abs(f(a))<eps) then
error('solution at a')
abort;
end
if(abs(f(b))<eps) then
error('solution at b')
abort;
end
while(N>0)
c=(a+b)./2;
if(abs(f(c))<eps) then
x=c;
mprintf("after %i times of iteration, ", (100-N))
return;
end
if(f(a)*f(c)<0) then
b=c;
else
a=c;
end
N=N-1;
end
error('No convergence')
abort;
endfunction
// Calculation of root using bisection-method
deff('[y]=p(x)',['y=x^3+4*x^2-10'])
xx=-5:0.1:5;yy=p(xx); //(x,y) data
zeroLine = zeros(xx); //data for the x-axis (all zeros)
figure(0);
plot2d([xx' xx'],[yy' zeroLine']) //plot function and x-axis
mprintf("Using Bisection method, we found the root of the equation, ")
bisecapprox=bisection(1,2,p);
mprintf("to be at: \n")
disp(string(bisecapprox));

// Q5b Newton-Raphson
//Define Newton Raphsons method
function [x]=newton(x0, f, fp)
N=100; eps=1.e-4; //define max number of iteration and the error
maxval=10000.0; // defince value for divergence
xx=x0;
while(N>0)
xn=xx-f(xx)/fp(xx);
if(abs(f(xn))<eps) then
x=xn
mprintf("after %i times of iteration, ", (100-N))
return(x);
end
if(abs(f(xx))>maxval) then
disp(100-N);
error('Solution diverges');
abort;
end
N=N-1;
xx=xn;
end
error('No convergence');
abort;
endfunction
//Calculation of root using newton-raphson method
deff('[y]=f(x)','y=x^3+4*x^2-10');
deff('[y]=fp(x)','y=3*x^2+8*x');
x=(-5:0.01:5)';y=f(x);
figure(1);
plot(x,y);
xgrid()
mprintf("While using Newton-Raphson, we found the root of the equation, ")
newtonapprox=newton(1.5,f,fp)
mprintf("to be at: \n")
disp(string(newtonapprox));