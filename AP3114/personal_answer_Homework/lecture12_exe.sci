function [yy] = fseries(a0,aa,bb,xx,L)
    nn = length(aa); mm = length(xx);yy = zeros(1,mm);
    for j = 1:mm
        yy = a0/2;
        for k = 1:nn
            yy = yy + aa(k)*cos(2*k*%pi*x/L) + bb(k)*sin(2*k*%pi*x/L);
        end;
    end;
endfunction
//end function fseries

function [a0,a,b,y] = fourierseries(n,c0,L,x,f,tol)
    deff('[gg1]=g1(xi)','gg1=f(xi)*cos(2*nn*%pi*xi/L)');
    deff('[gg2]=g2(xi)','gg2=f(xi)*sin(2*nn*%pi*xi/L)');
    deff('[aaa]=a1(nn)','aaa=(2/L)*intg(c0,c0+L,g1,tol)');
    deff('[bbb]=b1(nn)','bbb=(2/L)*intg(c0,c0+L,g2,tol)');
    a0 = (2/L)*intg(c0,c0+L,f,tol);
    nmax = max(n);a = []; b = [];
    for j = 1:nmax
        a = [a a1(j)]; b = [b b1(j)];
    end;
    m = length(n); k = length(x);y = zeros(m,k);
    for j =1:m
        aj = a(1:n(j)); bj = b(1:n(j));   y(j,:) = fseries(a0,aj,bj,x,L);
    end;
endfunction
//end function fourierseries

deff('[y]=f(x)','y=exp(x)');
//exec('C:\Users\prgee\OneDrive\Year 2 Semester B\AP3114\Homeworks\Homework 10\fourierseries.sci')

L = 2; x=[-1:0.01:1]; y = f(x);
[a0,a,b,yy]=fourierseries([5,10,20,40],-L/2,L,x,f,1e-5);
scf(1);
clf(1);
plot2d([x' x' x' x' x'],[y' yy(1,:)' yy(2,:)' yy(3,:)' yy(4,:)']);
xtitle(['Fourier series for' '$y =e^{x}$' 'with 5,10,20,40 components'],'x','y')
