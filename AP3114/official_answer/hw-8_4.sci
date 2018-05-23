// Q4 Polynomial roots
//Exercise 1
exer1 = roots(poly([-10 1 0 5 0 3],'s','coeff'));
mprintf("We found roots for -10+x+5x^3+3x^5=0: \n")
disp(string(exer1));
//Exercise 2
exer2 = roots(poly([1 0 -1 0 0 1 0 -6],'s','coeff'));
mprintf("We found roots for 1-x^2+x^5-6*x^7=0: \n")
disp(string(exer2));
//Exercise 3
exer3 = roots(poly([3 1 -1 0 1],'s','coeff'));
mprintf("We found roots for 3+x-x^2+x^4=0: \n")
disp(string(exer3));