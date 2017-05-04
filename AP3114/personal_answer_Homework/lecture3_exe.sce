//PART 1
v = [3;-2;5]
v = [3, -2, 5]
m = [1 2 3; 4 5 6; 7  8 9]
m = [1 2 3; 4 5 6]
m(2,3)
m(2,:)
m(:,3)
m'


//PART 2
A = [1, 2, 3; 4, 5, 6]
B = [1;1;2]
A * B
A * A
A .* A
2*(A+2)
A/A
A./A
C=1:4
C*C
C.*c
1/C
(1)./C


// PART 3
A = [1 2 3; 4 5 6]
B = [1; 1]
X =A\B
v = [2,6,9,6,-4,0,2]
gsort(v,"g","i")
gsort(v)
unique(v)
U=[1:10]
length(U)
sum(U)
prod(U)
m=[1 2 3; 4 5 6];
size(U)


//PART 4
w=[1,5,3,8,14,7,3,2,12,6];find(w<5)
w=[1,5,3,8,14,7,3,2,12,6];find(w==3)


//PART 5
true = %t
if true then
     disp("hello"),
end

A=log(rand(3,3));
if imag(A)==0 then
    disp ('A is a real number');
end

if  imag(A)==0 then
    disp ('A is a real number');
else
    disp ('A is complex');
end


//PART 6
n=89;
isprime=%t
for i=2:(n-1)
    if pmodulo (n,i)==0
        then isprime=%f;
        break;
    end
end
isprime


n=16778;
timer();
res=[];
for i = 2:(n-1)
    if pmodulo (n,i) == 0 then
         res = [res,1];
    end
end
t1 = timer();

res
v = 2:(n-1);
timer();
I = find(pmodulo (n,v)==0);
res = v(I)
t2 = timer();

[t1,t2]


//PART 7
x=1; 
while exp(x)<>%inf;
    x = x+1;
end
[exp(x-1),exp(x)]==%inf

x=[1:3];
while exp(x)<>%inf;
    x = x+1;
end
exp(x)==%inf

x=1;
while %t
    if exp(x)==%inf then
        break;
    end
    x=x+1;
end
[exp(x-1),exp(x)]==%inf


//PART 8
function y=foo(x,g);
    y=g(x);
endfunction
typeof(foo)
foo(%pi,sin)
foo(%pi,sinh)==sinh(%pi)
v=rand(1,10);
foo(3,v)

function B=f(A)
    B=string(sign(A));
    B=strsubst(strsubst(B,'1','+'),'-+','-')
endfunction
f(rand(2,5,'n'))
