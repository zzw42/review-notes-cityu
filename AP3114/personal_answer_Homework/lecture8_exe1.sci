disp('Exercise 1')
function y=complexroots(r, theta)
y = [];
for k = 0:2
y = [y r^(1/3)*exp(%i*((theta+2*k*%pi)/3))];
end;
endfunction
z1=1;
z2=%i;
z3=5 + 3*%i;
z4=2 * %e^((%i*%pi)/2)
z5=-2 - 3*%i;

r1=abs(z1);theta1=0;
r2=abs(z2);theta2=%pi/2;
r3=abs(z3);theta3=atan(imag(z3)/real(z3));
r4=abs(z4);theta4=%pi/2;
r5=abs(z5);theta5=atan(-3/-2);

disp(complexroots(r1,theta1))
disp(complexroots(r2,theta2))
disp(complexroots(r3,theta3))
disp(complexroots(r4,theta4))
disp(complexroots(r5,theta5))
