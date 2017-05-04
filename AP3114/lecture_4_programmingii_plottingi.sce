// #1: defining function
function y=myfunction(x)
    y=2*x
endfunction

// #2: function(3)
function y=myfunction(x)
    z=2*x
endfunction

// #3: function(4) multiple output
function [y1,y2]=simplef(x1,x2)
    y1 = 2 * x1
    y2 = 3 * x2
endfunction

// #4: call anonther function
function y=fmain(x)
    y=2*flevel1(x)
endfunction

function y=flevel1(x)
    y=2*flevel2(x)
endfunction

function y=flevel2(x)
    y=2*x
    whereami
endfunction

// example: detering tax
function y=revenue(x)
    if  x<=10000 then
        y=0.1*x
    elseif x<=20000 then
        y=1000+0.2*(x-20000)
    elseif x<=40000 then
        y=3000+0.3*(x-40000)
    else
         y=9000+0.5*(x-40000)
    end
endfunction

// HW3 Exercise 6
n=89;
isprime=%t
for i=2:(n-1)
    if pmodulo (n,i)==0 then
        isprime=%f;
        break;
    end
end
isprime
