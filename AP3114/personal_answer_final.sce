//Problem 1
disp('Problem 1')
x = -2.1 : 0.15 : 2.1;
y = -6: 0.15 : 6;
[X, Y]= meshgrid(x, y);
U = 80 .* (Y.^2) .* (%e).^(- X.^2 - 0.3 * Y.^2)
// Plot
scf(1);
clf(1);
subplot(2,1,1);

surf(X,Y,U,'facecol','blu','edgecol','black');
xtitle(["$u(x,y)=80 y^2 \exp{-x^2 -0.3 y^2} $" 'U = 80 .* (Y.^2) .* (%e).^(- X.^2 - 0.3 * Y.^2)'])

subplot(2,1,2);
surf(X,Y,U);
xtitle(['$u(x,y)=80 y^2 \exp{-x^2 -0.3 y^2}$' 'U = 80 .* (Y.^2) .* (%e).^(- X.^2 - 0.3 * Y.^2)'])



// Problem 2
disp('Problem 2')
M1=[]
M2=[]
M3=[]
M4=[]
M5=[]
M6=[]

for n=1:100
    R1 = grand(1,2,"nor", 10, 2 )
    M1 = [M1 mean(R1)]
    
    R2 = grand(1,5,"nor", 10, 2 )
    M2 = [M2 mean(R2)]
    
    R3 = grand(1,10,"nor", 10, 2 )
    M3 = [M3 mean(R3)]
    
    R4 = grand(1,20,"nor", 10, 2 )
    M4 = [M4 mean(R4)]
    
    R5 = grand(1,50,"nor", 10, 2 )
    M5 = [M5 mean(R5)]
    
    R6 = grand(1,100,"nor", 10, 2 )
    M6 = [M6 mean(R6)]
end


scf(2);
clf(2);
subplot(2,3,1)
histplot(10,M1); //10 classes(blocks)
xtitle('n=2');
subplot(2,3,2)
histplot(10,M2); //10 classes(blocks)
xtitle('n=5');
subplot(2,3,3)
histplot(10,M3); //10 classes(blocks)
xtitle('n=10');
subplot(2,3,4)
histplot(10,M4); //10 classes(blocks)
xtitle('n=20');
subplot(2,3,5)
histplot(10,M5); //10 classes(blocks)
xtitle('n=50');
subplot(2,3,6)
histplot(10,M6); //10 classes(blocks)
xtitle('n=100');

S(1) = stdev (M1);
S(2) = stdev (M2);
S(3) = stdev (M3);
S(4) = stdev (M4);
S(5) = stdev (M5);
S(6) = stdev (M6);

scf(3);
clf(3);
plot([2 5 10 20 50 100],S',"o-")
xtitle('uncertainty of the mean - sample size','sample size','uncertainty of the mean ')



// Problem 3
disp('Prblem 3')

function [x,y] = Euler1(x0,y0,xn,Dx,g)
//Euler 1st order method solving ODE
// dy/dx = g(x,y), with initial
//conditions y=y0 at x = x0. The
//solution is obtained for x = [x0:Dx:xn]
//and returned in y
ymaxAllowed = 1e+100;
x = [x0:Dx:xn];
y = zeros(x);
n = length(y);
y(1) = y0;
for j = 1:n-1
 y(j+1) = y(j) + Dx*g(x(j),y(j));
    if y(j+1) > ymaxAllowed then
          disp('Euler 1 - WARNING: underflow or overflow');
          disp('Solution sought in the following range:');
          disp([x0 Dx xn]);
          disp('Solution evaluated in the following range:');
          disp([x0 Dx x(j)]);  n = j; x = x(1,1:n); y = y(1,1:n);
          break;
    end;
end;
endfunction
//End function Euler1
deff('[Df]=g(x,y)','Df = 2 * x * y') 
[x1,y1]=Euler1(0,1,2,0.5,g); 
[x2,y2]=Euler1(0,1,2,0.1,g); 
[x3,y3]=Euler1(0,1,2,0.05,g); 
[x4,y4]=Euler1(0,1,2,0.01,g);
xx = [0:0.1:2]; yy = exp(xx.^2);
scf(4);
clf(4);

plot2d(xx,yy,1,'011',' ',[0 0 2 12 ]) 
plot2d(x1,y1,-1,'011',' ',[0 0 2 12 ]) 
plot2d(x2,y2,-2,'011',' ',[0 0 2 12 ]) 
plot2d(x3,y3,-3,'011',' ',[0 0 2 12 ]) 
plot2d(x4,y4,-9,'011',' ',[0 0 2 12 ]) 
xtitle(['Numerical solution of the equation'])

deff('[y]=f(x)','y = %e ^(x^2)')
// Integration
function y = Integral (dx)
xvalue = 0;
integral = 0;
while xvalue < 2;
    integral = integral + f(xvalue) * dx
    xvalue = xvalue + dx
end
y = integral;
endfunction

disp('Value of integral')
disp('dx = 0.5')
disp(Integral(0.5));
disp('dx = 0.1')
disp(Integral(0.1));
disp('dx = 0.05')
disp(Integral(0.05));
disp('dx = 0.01')
disp(Integral(0.01));



// Problem 4

disp("4(1)")
mprintf ('Newton-Raphson method has a faster rate of convergence, \n but sometimes applying this method \n on some functions cannot converge to the root,\n it depends on initial point that we choose, \n another disadvantage is that the derivative of the function must be known.\n')
mprintf ('Bisection method has a relatively slow rate of convergence \n, but the root can always be found given the right interval.')


disp('4(2)')
disp('(i)')
function [x]=half(a,b,f)
//interval halving routine
N = 100; eps = 1.e-2; // define max. no. iterations and error
if (f(a)*f(b) > 0) then
    error('no root possible f(a)*f(b) > 0')
    abort;
end;

if(abs(f(a)) < eps) then
    error('solution at a')
    abort;
end;

if(abs(f(b)) < eps) then
    error('solution at b')
    abort;
end;

while (N > 0)
    c = (a+b)/2;
    if (abs(f(c)) < eps) then
        x = c;
        x
        return;
    end;

    if (f(a)*f(c) < 0) then
        b = c;

    else
        a = c;
    end;
    N = N - 1;
end;
error('No convergence')
abort;
//end function
endfunction

deff('[y] = f4 (x) ','y=x^2-10')
mprintf('Bisction method gives the root')
disp(half(1,5,f4));

disp('(ii)')
function [x]=newton(x0,f,fp)
//newton-raphson algorithm
N = 100; eps = 1.e-2; // define max. no. iterations and error
maxval = 10000.0; // define value for divergence
xx = x0;
while (N>0)
    xn = xx - f(xx)/fp(xx);
    if(abs(f(xn))<eps) then
        x = xn
//        disp(100-N);
        return(x);
    end;
    if (abs(f(xx))>maxval) then
//        disp(100-N);
        error('Solution diverges');
        abort;
    end;
    N = N - 1;
    xx = xn;
end;
error('No convergence');
abort;
//end function
endfunction
deff('[y] = df4 (x) ','y=2 * x')
mprintf('Newton-Raphson method gives the root')
disp(newton(1,f4,df4))

disp('(iii)')
mprintf(' In this case, yes.\n')
mprintf(' In some cases, if not, the initial point of Newton method should be changed \n to a more accurate value to obtain the root of this function. \n And the interval of bisection method should guaruntee that there is one and only one root in that interval.\n')

// Problem 5
disp('Problem 5')

height = 0;
volumbe = 0;
h = [0];
v = [0];
while h < 3
    height = height + 0.01;
    volumbe = (%pi /3) * height ^2 *(3 * 3 -height )
    h = [h height]
    v = [v volumbe]
end

while h < 7
    height = height + 0.01;
    volumbe = (2 * %pi /3) * 3^3 + %pi * 3^2 * (height - 3) 
    h = [h height]
    v = [v volumbe]
end


while h < 10
    height = height + 0.01;
    volumbe = (4 * %pi /3) * 3^3 + %pi * 3^2 * (10-2*3) - (%pi /3 )*(10-height)^2*(3*3 -10 +height)
    h = [h height]
    v = [v volumbe]
end

scf(5);
clf(5);
plot(h,v,'-')
xtitle('Volume of the Liduid',['h' '$(m)$'],['Volume' '$(m^3)$'])
