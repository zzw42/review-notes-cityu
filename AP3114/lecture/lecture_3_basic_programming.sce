// codes in lecture 3

//#1: if
i = 1;

if (i == 1 ) then
    disp("Hello!")
elseif( i == 2 ) then
    disp("Goodbye!")
elseif( i == 3) then
    disp("Thao !")
else
    disp("what")
end


//#2: case
i = 2
select i
case 1
    disp("one")
case 2
    disp("two")
case 3
    disp("three")
else
    disp("ha")
end


//#3: 'for' loop
for i = 1:5
    disp(i)
end

for i = 0.5:2;5
    disp(i)
end


//#4: 'while' loop
s = 0
i = 0
while(i <= 10)
    s = s + i
    i = i +1
end
disp(s)


// #5: using 'continue' in a loop 
s = 0
i = 0

while (i < 10 )
    i =i + 1
    if( modulo (i, 2)== 0 ) then
        continue
// continue is the command in `for` or `while` "loop"
// to skip the lines between continue and end of the *loop*
    end
    s = s + i
end


// #6: example: caculating balance
balance = 1000
year = 2017
interest = 0.2
while( balance <= 2000 )
    balance = balance * (1+interest)
    year = year + 1
end
disp ('The year is ' + string(year))
disp ('The balance is ' + string(balance))


// #7: using 'pause' to debug
function y=mysum(istart,iend)
    pause
    y = sum( istart: iend)
endfunction
