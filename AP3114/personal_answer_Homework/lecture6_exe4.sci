A=1:99;A=A'
for i=1:10000
    x = grand(1, 1, "uin", 1, 99) ;
    y = grand(1, 1, "uin", 1, 99) ;
    A([x y],:)=A([y x],:)
end
disp(A)
