// Q3 cubicroots
function [root1, root2, root3]=cubicroots(d, a, b, c)
	// First calculate p, q and D as distinguishers
	a=a/d;
	b=b/d;
	c=c/d;
	p = (3*b-a^2)/3;
	q = c + 2*(a^3)/27 - a*b/3;
	D = (q/2)^2 +(p/3)^3;
	if D>0 then
		// One real and two complex conjugate solutions
		// Here we have to treat Scilab to take cubic root of a real number so it will not return the complex form
		u=sign(-(q/2)+sqrt(D))*abs(-(q/2)+sqrt(D))^(1/3);
		v=sign(-(q/2)-sqrt(D))*abs(-(q/2)-sqrt(D))^(1/3);
		root1=-(a/3)+u+v;
		realroot23=-(a/3)-((u+v)/2);
		imagroot23=3^(1/2)*(u-v)/2;
		root2=realroot23+(imagroot23*%i)
		root3=realroot23-(imagroot23*%i)
		disp("First root is "+string(root1));
		disp("Second root is "+string(root2));
		disp("Third root is "+string(root3));
		
	elseif D==0
		//Three real solutions with one double root
		u=-(q/2)+(sqrt(D))^(1/3);
		v=-(q/2)-(sqrt(D))^(1/3);
		root1=-(a/3)+u+v;
		root2=-(a/3)-((u+v)/2);
		disp("The first root is "+string(root1));
		disp("The other 2 solutions are a double root "+string(root2));
	
	else
		// Three distinct real solutions
		// Using trigonometric form to calculate the roots
		theta=acos((-q)/(2*((abs(p)/3)^(3/2))));
		theta1=theta/3;
		theta2=(theta-%pi)/3;
		theta3=(theta+%pi)/3;

		root1= -(a/3) + 2*((abs(p)/3)^(1/2))*cos(theta1);
		root2= -(a/3) + 2*((abs(p)/3)^(1/2))*cos(theta2);
		root3= -(a/3) + 2*((abs(p)/3)^(1/2))*cos(theta3);
		disp("First root is "+string(root1));
		disp("Second root is "+string(root2));
		disp("Third root is "+string(root3));
	end
endfunction

mprintf("We found roots for x^3+1=0: \n")
cubicroots(1,0,0,1);
mprintf("\n")
mprintf("We found roots for 3x^3+5x^2+2x+6=0: \n")
cubicroots(3,5,2,6);
mprintf("\n")
mprintf("We found roots for x^3+x^2+x+1=0: \n")
cubicroots(1,1,1,1);
mprintf("\n")
mprintf("We found roots for 9x^3+3x^2+4x+6=0: \n")
cubicroots(9,3,4,6);
mprintf("\n")