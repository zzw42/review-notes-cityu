disp('Exercise 2')
function y=quadroots(a,b,c)
D = b^2-4*a*c;
if a == 0 then
    x = -c/b;
    y = x
elseif D > 0 then
    x1 = (-b+D^(1/2))/(2*a);
    x2 = (-b-D^(1/2))/(2*a);
    y=[x1,x2];
elseif D==0 then
    x = -b/(2*a);
    y=x;
else 
    xr = -b/(2*a);
    xi = (-D)^(1/2)/(2*a);
    x1 = xr + xi *%i;
    x2 = xr - xi *%i;
    y=[x1,x2];
end
endfunction

disp(quadroots(1,0,1))
disp(quadroots(0,2,1))
disp(quadroots(1,3,2))
disp(quadroots(4,24,36))
