function y=free(t)
    y=H-(1/2) .* g .* t.^2
endfunction

function y=resistance(t)
    y=H-(g/k) .*t + (g/k^2) .* (1-%e .^(-k*t))
endfunction

H=495;
g=9.8;
k=0.1;
t=linspace(0,10,100);

scf(3);
clf(3);
figure(3);
plot(t,free(t),"r",t,resistance(t),"b");
xlabel("Time(s)");
ylabel("Distance(m)");
legend(["Free fall ","Resistance"])
xs2png(3,"5_3.png")

t = fsolve(10,free);
disp(t);

