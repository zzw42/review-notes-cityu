//the two-engined DFII
function y=testA()
        X = grand(1, 1, "def");
        Y = grand(1, 1, "def");
    if Y > 0.5 & X > 0.5 then
        y = 1;
    else
        y = 0;
    end
endfunction


A=0;
for i=1:1000
    A=A+testA();
end
disp(A/1000)

//four-engined DFIV
function y=testB()
        X = grand(1, 1, "def");
        Y = grand(1, 1, "def");
        A = grand(1, 1, "def");
        B = grand(1, 1, "def");
    if X > 0.5 & Y > 0.5 & A > 0.5 then
        y = 1;
    elseif X > 0.5 & Y > 0.5 & B > 0.5 then
        y = 1;
    elseif X > 0.5 & A > 0.5 & B > 0.5 then
        y = 1;
    elseif Y > 0.5 & A > 0.5 & B > 0.5 then
        y = 1;
    else 
        y= 0; 
    end
endfunction

B=0;
for i=1:1000
    B=B+testB();
end
disp(B/1000)
