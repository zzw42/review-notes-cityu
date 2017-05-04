//PART 1

//Precedence
2*3+4
2+3*4
2/3+4
2+3/4
//Parentheses
2*(3+4)
(2+3)*4
(2+3)/4
3/(2+4)
//Exponents
1.23456789d10
1.23456789e10
1.23456789e-5

//PART 2
//Functions
sqrt (4)
sqrt(9)
sqrt(-1)
sqrt(-2)
sqrt(1)
log(exp(2))
exp(log(2))
10^2
log10(10^2)
10^log10(2)
sign(2)
sign(-2)
sign(0)

//Trigonometry
cos(0)
sin(0)
cos(%pi)
sin(%pi)
cos(%pi/4)-sin(%pi/4)

a=rand(2,3);
typeof(a)
a=[a,zeros(2,1)]
a='scilab';typeof(a)
exists('a')
clear('a');exists('a')
a= "Scilab"
b=rand(2,2)
b= b>=0.5
L=list(a,b)
A.x=32;A.y=%t
a=spec(rand(3,3))

//PART 4
S="a string with a quote character<<"'>>"
S='a long string 0...
using continuation'
S=['A','string';'2x2','matrix']
length(S)
~(1>=2)
%t & %t

//PART 5
x=-10:0.1:10;
y=((x>=0).*exp(-x))+((x<0).*exp(x));
y=bool2s([%t,%f])
%e
%pi
2+3*%pi
disp("Bob won")
d=500;
disp("Bob won "+string(d)+" dollars")
disp("It''s fair")

//PART 6
a=sqrt(3)
b=1
c=2
a^2+b^2==c^2
abs(a^2+b^2-c^2)<%eps
abs(a^2+b^2-c^2)/c^2<%eps

// PART 7
// a (might be wrong) explainition
// when boolean operators (&, |, ~) deal with constant
// 0 represents %f, all others represent %t
1 & -1
13 & ~(-6)
0 < -2|0
~[1 0 2] * 3
5 > 4 > 3
2 > 3 & 1

//PART 8
a=[1 0 2]
b=[0 2 2]
a ~= b
a < b
a<b<a
a<b<b
a | (~a)
b& (~b)
a(~(~b))
a=b==a
a=b==a
