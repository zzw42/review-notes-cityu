//3a
function y=fa(x)
    y=sin(2*x)
endfunction
function y=dfa(x)
    y=2*cos(2*x)
endfunction
h=[1e-1 1e-2 1e-3 1e-4 1e5];
xx1=dfa(%pi);
error1=abs(xx1 - ((fa(%pi + h)-fa(%pi)) ./ h) );
xset('window',1);
clf(1);
plot2d(h,error1,1,'011',' ',[0 0 0.01 0.0002]);
plot2d(h,error1,-9,'011',' ',[0 0 0.01 0.0002]);
xtitle(['(a) error vs.' '$x$' '-increment'],'h','error');

clear;

//3b
function y=fb(x)
    y=(x.^2+3*x)./(x+1)
endfunction
// be careful of the dot here
function y=dfb(x)
    y=( x.^2 +2*x +3 ) ./ (1 + x).^2
endfunction
h=[1e-1 1e-2 1e-3 1e-4 1e-5];
xx2=dfb(2);
//function y=errorb(h)
//    y = abs (xx2 - ((f2(2 + h)-f2(2)) ./ h) );
//endfunction
//error2 = errorb(h);
error2 = abs (xx2 - ((fb(2+h) - fb(2)) ./ h) );
xset('window',2);
clf(2);
plot2d(h,error2,1,'011',' ',[0 0 0.01 0.001]);
plot2d(h,error2,-9,'011',' ',[0 0 0.01 0.001]);
xtitle('(b) error vs. x-increment','h','error');

clear;

// 3c
function y=f3(x)
    y=1 ./ (1+x.^2)
    // be careful of the dot here as well
endfunction
function y=df3(x)
    y=-(2*x) ./(1 + x^2)^2
endfunction
h=[1e-1 1e-2 1e-3 1e-4 1e-5];
xx3=df3(-1);
error3= abs ( xx3 - ( (f3(-1 + h)-f3(-1)) ./ h ) );
xset('window',3);
plot2d(h,error3,1,'011',' ',[0 0 0.1 0.1]);
plot2d(h,error3,-9,'011',' ',[0 0 0.1 0.05]);
xtitle('(c) error vs. x-increment',"$h$",'error');

clear;

// 3d
function y=f4(x)
    y=tan(x)
endfunction
function y=df4(x)
    y=sec(x)^2
endfunction
h=[1e-1 1e-2 1e-3 1e-4 1e-5];
xx4=df4(%pi/4);
error4=abs(xx4 - ( (f4(%pi/4 + h)-f4(%pi/4)) ./ h) );
xset('window',4);
plot2d(h,error4,1,'011',' ',[0 0 0.1 0.3]);
plot2d(h,error4,-9,'011',' ',[0 0 0.1 0.3]);
xtitle('(d) error vs. x-increment','h','error')
