function damping(m, betan, k, x0, v0, t0)
w0= (k/m)^(1/2); a = betan/2;
wI=sqrt(w0^2-a^2);
deff('[FF]=f(s)',['f1=s(1)*exp(-a*t0)*cos(wI*t0+s(2))-x0';...
'f2 = -s(1)*exp(-a*t0)*(a*cos(wI*t0+s(2))+wI*sin(wI*t0+s(2)))-v0';...
'FF = [f1;f2]'])
s0 = [5;%pi/3];
solutions=[];
solutions=fsolve(s0,f);
A0 = solutions(1);
phi1 = solutions(2);
deff('[xs]=x(t)','xs=A0.*exp(-a.*t).*cos(wI.*t+phi1)')
deff('[vs]=v(t)','vs=-A0.*exp(-a.*t).*(a.*cos(wI.*t+phi1)+wI.*sin(wI.*t+phi1))')
deff('[acc]=aa(t)','acc=A0.*exp(-a.*t).*(a^2.*cos(wI.*t+phi1)+2.*a.*wI.*sin(wI.*t+phi1)-wI^2.*cos(wI.*t+phi1))')
tt = [0:0.1:30]; xx=x(tt); vv=v(tt); aaa=aa(tt);
plot2d([tt',tt',tt'],[xx',vv',aaa'],[2,3,4],'111','position@velocity@acceleration',[0 -10 30 10])
tt = [0:0.1:90]; xx=x(tt); vv=v(tt); aaa=aa(tt);
xset('window',1); plot(xx', vv')
xtitle('v-vs-x phase portrait', 'x', 'v')
a.title.font_size=5;
a.x_label.font_size=5;
a.y_label.font_size=5;
xset('window',2); plot(xx', aaa')
xtitle('a-vs-x phase portrait', 'x', 'a')
a.title.font_size=5;
a.x_label.font_size=5;
a.y_label.font_size=5;
xset('window',3); plot(vv', aaa')
xtitle('a-vs-v phase portrait', 'v', 'a')
a.title.font_size=5;
a.x_label.font_size=5;
a.y_label.font_size=5;
endfunction