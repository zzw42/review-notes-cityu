disp('Exercise 3')
function y=cubicroots(d,e,f,g)
    a = e/d;
    b = f/d;
    c = g/d;
p = (3*b-a^2)/3;
q = c + (2*(a^3)/27)-(a*b)/3;
D = (q/2)^2 + (p/3)^3;

    u = sign(-q/2 + D^(1/2)) * (abs(-q/2 + D^(1/2)))^(1/3);
    // caution: when caculate 
    // the cubic root of a negative number, it might 
    // give the coomplex root
    v = sign(-q/2 - D^(1/2)) * (abs(-q/2 - D^(1/2)))^(1/3);
    xr = -(a/3) - (u+v)/2;
    xi = ((3)^(1/2)) * (u-v)/2;
if D > 0 then
    x1 = -(a/3) + u + v;
    x2 =  xr + %i* xi;
    x3 =  xr - %i* xi;
    y = [x1,x2,x3];

elseif D == 0 then
    x1 = -(a/3) + u + v ;
    x2 = -(a/3) -(u+v)/2;
    x3 = -(a/3) -(u+v)/2;
    y = [x1,x2,x3]

else
    cosphi = - q/(2 * (abs(p)/3)^(3/2))
    phi = acos(cosphi);
    phi1 = phi /3;
    phi2 = (phi-%pi)/3;
    phi3 = (phi+%pi)/3;
    x1= -a/3 + 2* (abs(p)/3)^(1/2)*cos(phi1); 
    x2= -a/3 + 2* (abs(p)/3)^(1/2)*cos(phi2); 
    x3= -a/3 + 2* (abs(p)/3)^(1/2)*cos(phi3);
    y = [x1, x2, x3] 
end
endfunction


disp(cubicroots(1,0,0,1));
disp(cubicroots(3,5,2,6));
disp(cubicroots(1,1,1,1));
disp(cubicroots(9,3,4,6));
