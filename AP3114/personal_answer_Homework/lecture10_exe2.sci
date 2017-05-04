// 2a
disp("a")
deff('[FF]=f(s)',['f1=s(1)*exp(-a*t0)*cos(wI*t0+s(2))-x0';... 
'f2 = -s(1)*exp(-a*t0)*(a*cos(wI*t0+s(2))+wI*sin(wI*t0+s(2)))-v0';... 
'FF = [f1;f2]'])
m=2;b=0.01;k=2;
w0 = (k/m)^(1/2); a = b/(2*m); wI = (w0^2-a^2)^(1/2); 
//w0 = 1; a = 0.0025; wI = 0.999997; 
x0 = 0.2; v0 = 1.2; t0 = 0; 
s0 = [5;%pi/3] 
result=fsolve(s0,f)
A0 = result(1); phi1 = result(2); 
//A0 = 7.1421364; phi1 = 1.3591997; 
deff('[xs]=x(t)','xs = A0.*exp(-a.*t).*cos(wI.*t+phi1)') 
deff('[vs]=v(t)',... 
'vs =-A0.*exp(-a.*t).*(a.*cos(wI.*t+phi1)+wI.*sin(wI.*t+phi1))') 
deff('[acc]=aa(t)',... 
'acc=A0.*exp(-a.*t).*(a^2.*cos(wI.*t+phi1)+... 
2.*a.*wI.*sin(wI.*t+phi1)-wI^2.*cos(wI.*t+phi1))')
// Plotting
tt = [0:0.1:30]; 
xx = x(tt); 
vv = v(tt); 
aaa = aa(tt); 
xset('window',1);plot2d([tt',tt',tt'],[xx',vv',aaa'],[2,3,4],'111',... 
'position@velocity@acceleration',[0 -10 30 10]) 
xtitle('Damped oscillatory motion', 't', 'x,v,a')

xset('window',2);plot(xx',vv') 
xtitle('v-vs-x phase portrait','x','v') 

xset('window',3);plot(xx',aaa') 
xtitle('a-vs-x phase portrait','x','a') 

xset('window',4);plot(vv',aaa') 
xtitle('a-vs-v phase portrait','v','a')

// 2b
disp("b")
m=4; b=0.1; k=2;
w0 = (k/m)^(1/2); a = b/(2*m); wI = (w0^2-a^2)^(1/2); 
s0 = [5;%pi/3] 
result = fsolve(s0,f)
A0 = result(1); phi1 = result(2); 
// Plotting
tt = [0:0.1:30]; 
xx = x(tt); 
vv = v(tt); 
aaa = aa(tt); 
xset('window',5);plot2d([tt',tt',tt'],[xx',vv',aaa'],[2,3,4],'111',... 
'position@velocity@acceleration',[0 -10 30 10]) 
xtitle('Damped oscillatory motion', 't', 'x,v,a')

xset('window',6);plot(xx',vv') 
xtitle('v-vs-x phase portrait','x','v') 

xset('window',7);plot(xx',aaa') 
xtitle('a-vs-x phase portrait','x','a') 

xset('window',8);plot(vv',aaa') 
xtitle('a-vs-v phase portrait','v','a')

//2c
m=1; b=0.02; k=2;
w0 = (k/m)^(1/2); a = b/(2*m); wI = (w0^2-a^2)^(1/2); 
s0 = [5;%pi/3] 
result = fsolve(s0,f)
A0 = result(1); phi1 = result(2); 
// Plotting
tt = [0:0.1:30]; 
xx = x(tt); 
vv = v(tt); 
aaa = aa(tt); 
xset('window',9);plot2d([tt',tt',tt'],[xx',vv',aaa'],[2,3,4],'111',... 
'position@velocity@acceleration',[0 -10 30 10]) 
xtitle('Damped oscillatory motion', 't', 'x,v,a')

xset('window',10);plot(xx',vv') 
xtitle('v-vs-x phase portrait','x','v') 

xset('window',11);plot(xx',aaa') 
xtitle('a-vs-x phase portrait','x','a') 

xset('window',12);plot(vv',aaa') 
xtitle('a-vs-v phase portrait','v','a')

//2d
disp("d")
m=0.5; b=0.25; k=2;
w0 = (k/m)^(1/2); a = b/(2*m); wI = (w0^2-a^2)^(1/2); 
s0 = [5;%pi/3] 
result = fsolve(s0,f)
A0 = result(1); phi1 = result(2); 
// Plotting
tt = [0:0.1:30]; 
xx = x(tt); 
vv = v(tt); 
aaa = aa(tt); 
xset('window',13);plot2d([tt',tt',tt'],[xx',vv',aaa'],[2,3,4],'111',... 
'position@velocity@acceleration',[0 -10 30 10]) 
xtitle('Damped oscillatory motion', 't', 'x,v,a')

xset('window',14);plot(xx',vv') 
xtitle('v-vs-x phase portrait','x','v') 

xset('window',15);plot(xx',aaa') 
xtitle('a-vs-x phase portrait','x','a') 

xset('window',16);plot(vv',aaa') 
xtitle('a-vs-v phase portrait','v','a')
