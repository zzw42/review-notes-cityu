//Question 1a
disp("Question 1a")
real1=1
disp(real1)
disp("this is real variable");
string1="foo";
disp(string1)
disp("this is string");
boolean=%T;
disp(boolean)
disp("This is Booleans");
comple=%i;
disp(comple)
disp("This is complex number");
const=%pi;
disp(const)
disp("This is constant");

//Question 1b
disp("Question 1b")
Matrix=zeros(4,4)
for i=1:4
Matrix(i,i)=2
end
for i=1:3
Matrix(i,i+1)=-1
end
for i=1:3
Matrix(i+1,i)=1
end
disp(Matrix)


//Question 1c
disp("Question 1c")
A=linspace(1,10,10);
disp("A");
disp(A);
B=[2,3,4];
disp("B");
disp(B);
disp("C");
C=ones(1,3);
disp(C);


//Question 1d
disp("Question 1d")
Matrix2=zeros(4,4);
for i=1:4
    for j=1:4
        Matrix2(j,i)=j+i;
    end
end
disp(Matrix2)



//Question 2
disp("Question 2")
A=[1 2 3; 4 5 6];
B=[7 8 9; 10 11 12];
X1=A/B;
disp("X1");
disp(X1);
X2=A\B;
disp("X2");
disp(X2);


//Question 3
disp("Question 3")
BankB=100;
BankC=100;

BankA=100*(1+0.18);
disp("Bank A");
disp(BankA);

for i=1:12
    BankB=BankB*(1+0.015);
end
disp("Bank B");
disp(BankB);

for i=1:365
    BankC = BankC *(1+ 1.5 / 36524.25);
end
disp("Bank C");
disp(BankC);

disp("Bank B offers the best deal.");


//Question 4
disp("Question 4")
pi=0;
term=0;
while abs(%pi-pi) > 0.00005
    pi = pi + 4 * (((-1)^term ) /(2 * term + 1));
    term = term + 1;
end
disp("pi");
disp(pi);
disp("term");
disp(term);

//Question 5
disp("Question 5")
count=0;
for i=1:5000
   if rand()>0.5 then
       count=count+1;
   else
       count=count;
   end
   N(1,i)=count/i
end
for i=1:5000
    M(1,i)=0.5
end
//Plotting
figure(1);
scf(1);
clf(1);
xdata=linspace(1,5000,5000);
plot(xdata,N,"k")
plot(xdata,M,"--r")
xtitle("Sample Probability of Heads in n flips of a simulated coin","Number of coin flips","Probability of heads")
legend("Sample Probability","Fair coin")


//Question 6a
disp("Question 6a")
t=linspace(0,2*%pi,1000);
figure(2);
scf(2);
clf(2);
plot(0.5*cos(t),0.5*sin(t),"pb")
plot(1*cos(t),1*sin(t),"pr")
plot(1.5*cos(t),1.5*sin(t),"pg")
plot(2*cos(t),2*sin(t),"py")
plot(2.5*cos(t),2.5*sin(t),"pk")
e=get("current_axes");
e.data_bounds=[-4,-2.5;4,2.5];


//Question 6b
disp("Question 6b")
figure(3);
scf(3);
clf(3);
plot(-1+0.6*cos(t),0.6*sin(t),"pb")
plot(0.6*cos(t),0.6*sin(t),"pk")
plot(1+0.6*cos(t),0.6*sin(t),"pr")
plot(-0.5+0.6*cos(t),-0.6+0.6*sin(t),"py")
plot(0.5+0.6*cos(t),-0.6+0.6*sin(t),"pg")
f=get("current_axes");
f.data_bounds=[-1.6,-1.5;1.6,1];
