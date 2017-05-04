t=linspace(0,4*%pi,100);
param3d(cos(t),sin(t),t)

//t=linspace(-20*%pi,20*%pi,2000);
//param3d1(sin(t),t.*cos(t)/max(t),t/100)


//x=linspace(-%pi,%pi,40);
//y=linspace(-%pi, %pi, 40);
//plot3d(x,y,sinh(x')*cos(y));


// #1: leap year
if modulo(year,4)<>0 then
    disp("Not leap year!")
elseif modulo(year,100)<>0 then
    disp("Leap Year!")
elseif modulo(year,400)<>0 then
    disp("Not Leap Year!")
else
    disp("Leap Year!")
end

// #2: Inflation
clear;
number=200;
inflation=5.6;
year=4;
price=1;

capital = number * price;
cost=0;

i=0;
while i<year
    price = price * (1+inflation/100);
    i = i+1
    cost = cost + number * price;
end
disp(cost)

new_number = int(capital / price);
disp(new_number)

// #3: Adding-up numbers
clear;
n=12349;
remainder=0;
i=1;
while %t
    if modulo(n,i)==n then
        break;
    end
    i = i*10;
    remainder = remainder + modulo(n,i)/i*10;
    n = n - modulo(n,i);
end
disp(remainder)

// #4: Vending machine
br = 100;
coupon = 100;

while coupon > 7
    br = br + int (coupon ./ 7)
    coupon = modulo(coupon, 7) + int (coupon ./ 7)
end
disp(br,coupon)


// Returns a 400 by 800 matrix of random doubles
R = grand(400,800,"def")
scf(1);
clf(1);
histplot(10,R); //10 classes(blocks)
xtitle("Uniform distribution", "X", "Frequency")

// Normal distribution
R = grand(400,800,"nor", 0, 1 )
scf(2);
clf(2);
histplot(20,R); //10 classes(blocks)
xtitle("Normal distribution", "X", "Frequency")
