//PART 1
//Plus one
x = 1:4;
y = x + 1
//Vectorized multiplication
x = 1: 4;
y = 5 : 8;
z = x .* y
//Vectorized invert
x = 1 : 4;
y = 1 ./ x




//PART 2
//Vectorized division
x = 12*(6:9);
y = 1:4;
z = x ./ y
//Vectorized squaring
x = 1 : 4;
y = x.^2
//Vectorized sinus
x = linspace (0,%pi ,10);
y = sin(x)
//Vectorized function
r = 2.220D -16;
x = linspace ( -16 ,0 ,10);
y = log10 (r ./10.^ x + 10.^ x);




//PART 3
A=[1,2,3+5]
A=[1,2,3*5]
A=[A,0;1,2,3,4]
A=[eye(2,1),3*ones(2,3);linspace(3,9,4);zeros(1,4)]
d=diag(A)'
B=diag(d)
C=matrix(d,2,2)






//PART 4
A=rand(2,2);
B=exp(A)
B=expm(A)
clear A;
A(2,4)=1
A([1,2],[1,2])=int(5*rand(2,2))
A([1,2],[1,3])=[]
A(:,1)=8
A(:,$)=[]
A(:,$+1)=[4;5]
A=int(10*rand(3,7));
B=A([1,3],$-1:$)





//PART 5
A=(1:3)'*ones(1,3)
A.*A'
t=(1:3)';m=size(t,'r');n=3;
A=(t*ones(1,n+1)).^(ones(m,1)*[0:n])
A=eye(2,2).*.[1,2;3,4]
A=[1,2;3,4];b=[5;6];
x=A\b;norm(A*x-b)
A1=[A,zeros(A)];x=A1\b
A1=[A;A];x=A1\[b;7;8]





//PART 6
A=rand(2,8,'n');
A=sign(A);
A=string(A)
A=strsubst(A,'1','+');
A=strsubst(A,'-+','-')

name='x';n=3;val=[45,67,34];
str=name+string(1:n)+'=val('+string(1:n)+');'
execstr(str);
[x1,x2,x3]




//PART 7
A= int(10*rand(1,7))
A(A>=3) = 0
I=find(A == 0)
A=sprand(100,100,0.1);
whos('-type','sparse')
B=full(A);
whos('-name','B');
timer();inv(B);timer()
timer();inv(A);timer()





//PART 8
x.color = 4;
x.value = rand(1,3);
x.name = 'foo';
x
r = 1/%s
a=[1,r;1,1]
b=inv(a)
b.num
b.den
sys=ssrand(1,1,2)
sys.A
L=list()
L(2)=testmatrix('mag1',3)
L(0)=34
L($+1)='Y'
[a,b]=L([1,3])
L(2)=null();

