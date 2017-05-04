//Lecture6 excercise 2
A = [2 51  39 24 50 42 8 62 34 70 52 28 65 8]
B = [96 50 52 55 56 46 9 98 81 42 24 92 10 46]
Sab=corr(A,B,1)
Sa=stdev(A)
Sb=stdev(B)
r=Sab/(Sa*Sb)
disp("Correlation coefficient is "+string(r))
