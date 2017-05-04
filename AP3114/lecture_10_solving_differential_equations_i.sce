// #1: first-order, linear ODEs with constant coefficients
function [pInt] = intpoly(p)
//This fucntion calculates the indefinite integral
//of polynomial p
c = coeff(p);
n = length(c)-1;
d = [1];
for j=1:n+1
    d = [d j];
end;
cc = [0 c];
cc = cc./d;

disp('Indefinite integral - Add integration constant');
printf(' \n');
pInt = poly(cc,varn(p),'coeff');
endfunction
//end function intpoly


// #2: Solutions of homogeneous linear equations 
// of any order with constant coefficients
deff('[FF]=f(s)',['f1=s(1)*exp(-a*t0)*cos(wI*t0+s(2))-x0';... // define f(1) with s(1)=A0, s(2)=phi0 x-x_0
'f2 = -s(1)*exp(-a*t0)*(a*cos(wI*t0+s(2))+wI*sin(wI*t0+s(2)))-v0';... // define f(2) with v-v_0
'FF = [f1;f2]']) // define FF=[f1 f2]
w0 = 0.7071; a = 0.05; wI = 0.7053; x0 = 1.5; v0 = -5.0; t0 = 0; 
s0 = [5;%pi/3] 
s = fsolve(s0,f) //f(s)=[0 0]
A0 = s(1); phi1 = s(2); 
deff('[xs]=x(t)','xs = A0.*exp(-a.*t).*cos(wI.*t+phi1)') 
deff('[vs]=v(t)',... 
'vs =-A0.*exp(-a.*t).*(a.*cos(wI.*t+phi1)+wI.*sin(wI.*t+phi1))') 
deff('[acc]=aa(t)',... 
'acc=A0.*exp(-a.*t).*(a^2.*cos(wI.*t+phi1)+... 
2.*a.*wI.*sin(wI.*t+phi1)-wI^2.*cos(wI.*t+phi1))')

// plot x-t v-t a-t with t: 0 -> 30
tt = [0:0.1:80]; xx = x(tt); vv = v(tt); aaa = aa(tt); 
scf(1)
// using plot2d \not\plot
plot2d([tt',tt',tt'],[xx',vv',aaa'],[2,3,4],'111',... 
'position@velocity@acceleration',[0 -10 80 10]) 
// from (0,-10) to (80,10)
xtitle('Damped oscillatory motion', 't', 'x,v,a')

// v-x plot with t: 0 -> 90
tt = [0:0.1:90]; xx = x(tt); vv = v(tt); aaa = aa(tt); 
scf(2);
clf(2);
//xset('window',1); 
plot(xx',vv') 
xtitle('v-vs-x phase portrait','x','v') 

scf(3);
clf(3);
//xset('window',2);
plot(xx',aaa') 
xtitle('a-vs-x phase portrait','x','a') 

scf(4);
clf(4);
//xset('window',3);
plot(vv',aaa') 
xtitle('a-vs-v phase portrait','v','a')
