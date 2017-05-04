// plotting
for n=1:50
    u(n)=(-0.8)^n;
end

clf; plot(u,"*r")


// function 'f'
function y=f(x)
    y=(x^2+2*x)*exp(-x)
endfunction

x=linspace(-2,5,50);
plot(x,f)

function y=f(x)
    y=(x^2+2*x)*exp(-x)
endfunction
function y=g(x)
    y=sin(x/2)
endfunction

x=linspace(-2,5,50);
clf
plot(x,f,"r",x,g,"g")


function f=myquadratic(x)
    f=x.^2
endfunction
xdata= linspace(1,10,50);
ydata= myquadratic(xdata);
plot(xdata, ydata)
xtitle("Diagram","Year","Income")


function f=myquadratic(x)
    f=x.^2
endfunction

function f=myquadratic2(x)
    f=2*x.^2
endfunction
xdata= linspace(1,10,50);
ydata= myquadratic(xdata);
plot(xdata, ydata,"+-")
ydata2= myquadratic2(xdata);
plot(xdata, ydata2,"o-")
xtitle("Diagram","Year","Income")
legend("x^2","2x^2")
xs2png(0,"h.png")

// clear all data
xdel(winsid());
clear;
clc;


//Figure #1: Basic plot with LaTeX annotations
//-----------------
//Data
x = linspace(-5,5,51);
y = 1 ./(1+x.^2);

//Plot
scf(1);
clf(1);
plot(x,y ,'o-b');
xlabel("$-5 \le x \le 5 $","fontsize",4,"color","red");
ylabel("$y(x)=\frac{1}{1+x^2}$", "fontsize",4,"color","red");
title("Range function (#Points= "+ string(length(x)) + ").","color","red","fontsize",4);
legend("Function evaluation")


//Figure #7: Subplot with real and imaginary part
//---------------------------
//Data
t=linspace(0,1,101);
y1=exp(%i*t);
y2=exp(%i*t.^2);
//Plot
scf(7);
clf(7);
subplot(2,1,1); //2*1 matrix with no. 1
plot(t,real(y1),'r');
plot(t,real(y2),'b');
xtitle("Real part");
subplot(2,1,2); //2*1 matrix with no. 2
plot(t,imag(y1),'c');
plot(t,imag(y2),'pm');
xtitle("Imaginary part");


//Figure #11 : Surface with a color map
x = -1:0.1:1;
y = -1:0.1:1;
[X,Y]=meshgrid(x,y);
Z=X .^3 +Y.^2;
//Plot
scf(14);
clf(14);
xset("colormap",jetcolormap(64));
surf(X,Y,Z);
xlabel('X');ylabel('Y');zlabel('Z');
