// Exercise 3(a)
clear;
clc;
h = [1e-1,1e-2,1e-3,1e-4,1e-5];
er = zeros(1,5);
x = %pi;
fxh = zeros(1,5);
fx = zeros(1,5);
findiff = zeros(1,5);
deff('[result]=f(x,h)','result=x+h')
// fx = sin(2x);
actualderivat = 2 .* cos(2*x);
for j=1:5
fxh(j) = f(x,h(j));
fx(j) = f(x,0);
end
for j=1:5
findiff(j) = (sin(2 .*fxh(j))-sin(2 .*fx(j)))./h(j);
er(j)= actualderivat-findiff(j);
end
xset('mark',-9,2)
plot2d(h,er,1,'011',' ',[0 0 0.15 0.02])
plot2d(h,er,-9,'011',' ',[0 0 0.15 0.02])
xtitle('error vs. x-increment','h','error')
//<<<<<>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<
// Exercise 3(b)
clear;
clc;
clear;
clc;
h = [1e-1,1e-2,1e-3,1e-4,1e-5];
er = zeros(1,5);
x = 2;
fxh = zeros(1,5);
fx = zeros(1,5);
findiff = zeros(1,5);
deff('[result]=f(x,h)','result=x+h')
// fx = (x^2+3*x)./(x+1);
actualderivat = (x^2+2*x+3)./(x+1)^2;
for j=1:5
fxh(j) = f(x,h(j));
fx(j) = f(x,0);
end
for j=1:5
findiff(j) = ((fxh(j)^2+3*fxh(j))./(fxh(j)+1)-(fx(j)^2+3*fx(j))./(fx(j)+1))./h(j);
er(j)= actualderivat-findiff(j);
end
xset('mark',-9,2)
plot2d(h,er,1,'011',' ',[0 0 0.1 0.01])
plot2d(h,er,-9,'011',' ',[0 0 0.1 0.01])
xtitle('error vs. x-increment','h','error')
//<<<<<>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<
// Exercise 3(c)
clear;
clc;
h = [1e-1,1e-2,1e-3,1e-4,1e-5];
er = zeros(1,5);
x = -1;
fxh = zeros(1,5);
fx = zeros(1,5);
findiff = zeros(1,5);
deff('[result]=f(x,h)','result=x+h')
// fx = 1/(1+x^2);
actualderivat = - 2*x/((x^2+1)^2);
for j=1:5
fxh(j) = f(x,h(j));
fx(j) = f(x,0);
end
for j=1:5
findiff(j) = (1/(1+fxh(j)^2)-1/(1+fx(j)^2))./h(j);
er(j)= actualderivat-findiff(j);
end
xset('mark',-9,2)
plot2d(h,er,1,'011',' ',[0 -0.05 0.1 0.01])
plot2d(h,er,-9,'011',' ',[0 -0.05 0.1 0.01])
xtitle('error vs. x-increment','h','error')
//<<<<<>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<
// Exercise 3(d)
clear;
clc;
h = [1e-1,1e-2,1e-3,1e-4,1e-5];
er = zeros(1,5);
x = %pi/4;
fxh = zeros(1,5);
fx = zeros(1,5);
findiff = zeros(1,5);
deff('[result]=f(x,h)','result=x+h')
// fx = tan(x);
actualderivat = 2 ./ (cos(2*x)+1);
for j=1:5
fxh(j) = f(x,h(j));
fx(j) = f(x,0);
end
for j=1:5
findiff(j) = ((tan(fxh(j)))-(tan(fx(j))))./h(j);
er(j)= actualderivat-findiff(j);
end
xset('mark',-9,2)
plot2d(h,er,1,'011',' ',[0 -0.25 0.1 0.01])
plot2d(h,er,-9,'011',' ',[0 -0.25 0.1 0.01])
xtitle('error vs. x-increment','h','error')