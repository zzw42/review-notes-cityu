function Y=find(N)
    Y = grand (1, 1, "bin", N, 0.8)
endfunction

y(1) = find(4);
y(2) = find(2*y(1));
disp(y)
