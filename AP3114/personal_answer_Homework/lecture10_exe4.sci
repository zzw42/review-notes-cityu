//Exercise 4
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
        disp([x0 Dx x(j)]);
        n = j;
        x = x(1,1:n); 
        y = y(1,1:n); 
        break;
    end; 
end; 
endfunction
//End function Euler1 
deff('[Df]=g(x,y)','Df=y*sin(x)') 
[x1,y1]=Euler1(0,1,6.5,0.25,g); 
[x2,y2]=Euler1(0,1,6.5,0.1,g); 
[x3,y3]=Euler1(0,1,6.5,0.05,g); 
xx=[0:0.1:2.5];
yy=exp(-cos(xx)+1);
ymin = min([y1 y2 y3 yy]) 
ymax = max([y1 y2 y3 yy]) 
rect = [0 0 7 25] 
plot2d(x1,y1,-1,'011',' ',rect) 
plot2d(x2,y2,-2,'011',' ',rect) 
plot2d(x3,y3,-3,'011',' ',rect) 
xtitle('Euler 1st order - dy/dx = y*sin(x)','x','y(x)')
