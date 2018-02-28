//h = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9];
//er = [0.00846132909 0.00098608109 0.0000]

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

//exec('Euler1.sci') 
deff('[Df]=g(x,y)','Df = x+y') 
[x1,y1]=Euler1(0,1,2,0.5,g); 
[x2,y2]=Euler1(0,1,2,0.2,g); 
[x3,y3]=Euler1(0,1,2,0.1,g); 
[x4,y4]=Euler1(0,1,2,0.05,g);
xx = [0:0.1:2]; yy = -xx -1 + 2.* exp(xx);
scf(1);
clf(1);

plot2d(xx,yy,1,'011',' ',[0 0 2 12 ]) 
plot2d(x1,y1,-1,'011',' ',[0 0 2 12 ]) 
plot2d(x2,y2,-2,'011',' ',[0 0 2 12 ]) 
plot2d(x3,y3,-3,'011',' ',[0 0 2 12 ]) 
plot2d(x4,y4,-9,'011',' ',[0 0 2 12 ]) 

// Example 3
deff('[Df]=g(x,y)','Df=x+sin(x*y)') 
[x1,y1]=Euler1(0,1,6.5,0.5,g); 
[x2,y2]=Euler1(0,1,6.5,0.2,g); 
[x3,y3]=Euler1(0,1,6.5,0.1,g); 
[x4,y4]=Euler1(0,1,6.5,0.05,g); 
//xx = [0:0.1:6.5]; yy = -xx -1 + 2.* exp(xx);
//ymin = min([y1 y2 y3 y4 yy]) 
//ymax = max([y1 y2 y3 y4 yy]) 
rect = [0 0 7 25] 
scf(2);
clf(2);
//plot2d(xx,yy,1,'011',' ',rect) 
plot2d(x1,y1,-1,'011',' ',rect) 
plot2d(x2,y2,-2,'011',' ',rect) 
plot2d(x3,y3,-3,'011',' ',rect) 
plot2d(x4,y4,-9,'011',' ',rect) 
xtitle('Euler 1st order - dy/dx = x+sin(x*y)','x','y(x)')

//Implicit Method Solving 1st order ODE

