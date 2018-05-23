clear;
lam=poly(0,'lam');

p1=lam^3+4*lam+5;
sol1=roots(p1)';

p2=lam^2+2*lam+1;
sol2=roots(p2)';

p3=lam^4+lam^2+lam+3;
sol3=roots(p3)';

p4=lam^2-3;
sol4=roots(p4)';

mprintf("a: general solution is: y = C1exp(%sx) + C2exp(%sx) + C3exp(%sx)\n", string(sol1(1)),string(sol1(2)),string(sol1(3)))
mprintf("b: general solution is: y = C1exp(%sx) + C2xexp(%sx)\n", string(sol2(1)),string(sol2(2)))
mprintf("c: general solution is: y = C1exp(%sx) + C2exp(%sx) + C3exp(%sx) + C4exp(%sx)\n", string(sol3(1)),string(sol3(2)),string(sol3(3)),string(sol3(4)))
mprintf("d: general solution is: y = C1exp(%sx) + C2exp(%sx)\n", string(sol4(1)),string(sol4(2)))
// The above mprintfs are for your reference only, you may use your way to display the results.
// Also try to read more to find out the General solution will be in case of double or complex roots, which is beyond the course's syllabus.