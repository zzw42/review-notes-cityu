disp('Exercise 5')

function [x]=half(a,b,f)
//interval halving routine
N = 100; eps = 1.e-4; // define max. no. iterations and error
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
    if(abs(f(c)) < eps) then
        x = c;
        x
        return;
    end;
    if(f(a)*f(c) < 0) then
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
N = 100; eps = 1.e-4; // define max. no. iterations and error
maxval = 10000.0; // define value for divergence
xx = x0;
while (N>0)
    xn = xx-f(xx)/fp(xx);
    if(abs(f(xn))<eps) then
        x=xn
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

deff('[y]=f(x)','y=x^3+4*x^2-10');
disp(half(1,2,f))

deff('[y]=fp(x)','y=3*x^2+8*x');
disp(newton(1,f,fp))
