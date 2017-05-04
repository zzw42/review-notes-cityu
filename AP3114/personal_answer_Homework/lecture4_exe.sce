//PART 1
function y=fact(x)
    if x<=1 then
        y=x;
    else 
        y=x*fact(x-1);
    end
endfunction
fact(4)

function y=f(x)
    y=2*x
endfunction

x=90;
f()

f(5,7)
[a,b]=f(5)

//PART 2
function y=f(x);
    z=x;
endfunction
y=89;
z=67;
w=f(x)

function y=f();
    y=x;
endfunction
x=5;
y=f()

function y=f();
    x=2*x;
    y=x;
endfunction
y=f()


x=[56,67];
function y=f();
    x(1)=5;
    y=x
endfunction
y=f()

//PART 3
function d=dollars(e,t);
    d=e*t;
endfunction
dollars(200,1.4)

function y=f(x);
    y=36/(8+exp(-x));
endfunction

function y=g(x);
    y=4*x/9+4;
endfunction
f(10)
g(12.5)

//PART 4
u(1)=4;
for i=1:19
    u(i+1)=u(i)+2*i+3;
end
disp(u)

year=2005;
height=120;
while(height <700);
    height=height+30;
    year=year+1;
end
disp(year)

//PART 5
y=[length(find(w<0)) length(find(w==0)) length(find(w>0))];
w=[-4 0 5 -3 0 3 7 -1 6]
disp(y)

//PART 6
function y=cost(x)
    if  x <= 500 then
        y = 0.02 * x
    elseif x<=1000 then 
        y=10+0.05*(x-500)
    else 
        y=35+0.1*(x-1000)
    end
endfunction
y = [cost(200) cost(500) cost(700) cost(1000) cost(1500)]
//y = cost([200 500 700 1000 1500]) //not working

//PART 7

function y=win(Y)
if Y==[6 6 6] then
    y=20
    elseif length(unique(Y))==1 then
    y=10
    elseif length(unique(Y))==2 then
    y=5
    else 
    y=0
end
endfunction

s=0;
for i=1:1000
    Y = grand(1, 3, "uin", 1, 6);
    w=win(Y);
    s=s+w;
end
disp(s/1000)
