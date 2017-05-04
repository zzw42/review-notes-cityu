// #1: Roots of quadrotic equation
a=1;
b=1;
c=2;
D = b^2-4*a*c;

if D > 0 then
    x1 = (-b + D^(1/2)) / (2*a);
    x2 = (-b - D^(1/2)) / (2*a);
    disp(x1,x2);
elseif D==0 then
    x = -b / (2*a);
    disp(x);
else
    xr = -b / (2*a);
    xi = (-D)^(1/2) / (2*a);
    x1 = xr + xi *%i;
    x2 = xr - xi *%i;
    disp(x1,x2);
end

// #2: Roots of cubic equation
// from official solutions
function [root1, root2, root3] = cubicroots(d, a, b, c)
// First calculate p, q and D as distinguishers
a=a/d;
b=b/d;
c=c/d;
p = (3*b-a^2)/3;
q = c + 2*(a^3)/27 - a*b/3;
D = (q/2)^2 +(p/3)^3;

if D>0 then
// One real and two complex conjugate solutions
// Here we have to treat Scilab to take cubic root of a real number so it will not return the complex form
    u=sign(-(q/2)+sqrt(D))*abs(-(q/2)+sqrt(D))^(1/3);
    v=sign(-(q/2)-sqrt(D))*abs(-(q/2)-sqrt(D))^(1/3);
    root1=-(a/3)+u+v;
    realroot23=-(a/3)-((u+v)/2);
    imagroot23=3^(1/2)*(u-v)/2;
    root2=realroot23+(imagroot23*%i)
    root3=realroot23-(imagroot23*%i)
    disp("First root is "+string(root1));
    disp("Second root is "+string(root2));
    disp("Third root is "+string(root3));

elseif D==0
//Three real solutions with one double root
    u=-(q/2)+(sqrt(D))^(1/3);
    v=-(q/2)-(sqrt(D))^(1/3);
    root1=-(a/3)+u+v;
    root2=-(a/3)-((u+v)/2);
    disp("The first root is "+string(root1));
    disp("The other 2 solutions are a double root "+string(root2));

else
// Three distinct real solutions
// Using trigonometric form to calculate the roots
    theta=acos((-q)/(2*((abs(p)/3)^(3/2))));
    theta1=theta/3;
    theta2=(theta- 2 * %pi)/3;
    theta3=(theta+ 2 * %pi)/3;
    root1= -(a/3) + 2*((abs(p)/3)^(1/2))*cos(theta1);
    root2= -(a/3) + 2*((abs(p)/3)^(1/2))*cos(theta2);
    root3= -(a/3) + 2*((abs(p)/3)^(1/2))*cos(theta3);
    disp("First root is "+string(root1));
    disp("Second root is "+string(root2));
    disp("Third root is "+string(root3));
end
endfunction

//mprintf("We found roots for x^3+1=0: \n")
//cubicroots(1,0,0,1);
//mprintf("\n")
//mprintf("We found roots for 3x^3+5x^2+2x+6=0: \n")
//cubicroots(3,5,2,6);
//mprintf("\n")
//mprintf("We found roots for x^3+x^2+x+1=0: \n")
//cubicroots(1,1,1,1);
//mprintf("\n")
//mprintf("We found roots for 9x^3+3x^2+4x+6=0: \n")
//cubicroots(9,3,4,6);
//mprintf("\n")


// #3: Caculating non-linear eqations
function [x]=half(a,b,f)
//interval halving routine
N = 100; eps = 1.e-5; // define max. no. iterations and error
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

function [x]=newton(x0,f,fp)
//newton-raphson algorithm
N = 100; eps = 1.e-5; // define max. no. iterations and error
maxval = 10000.0; // define value for divergence
xx = x0;
while (N>0)
    xn = xx - f(xx)/fp(xx);
    if(abs(f(xn))<eps) then
        x = xn
        disp(100-N);
        return(x);
    end;
    if (abs(f(xx))>maxval) then
        disp(100-N);
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

deff('[y]=hi(x)','y=x')
half(-1,0.5,hi)

// #4: roots of a complex number
z = -16;
r = abs(z);
theta = -%pi;
roots_of_z = [];
for k = 0:3
    roots_of_z = [roots_of_z r^(1/4)*exp(%i*((theta+2*k*%pi)/3))];
end;
roots_of_z
