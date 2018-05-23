clear;
exec("damping.sci");
// you may comment out the variable in order to calculate the desired case
// basically you should be able to find the function (refer to Appendix) from the lecture note
m=2; betan=0.01; k=2; x0=0.2; v0=1.2; t0 = 0;
m=4; betan=0.1; k=2; x0=0.2; v0=1.2; t0 = 0;
m=1; betan=0.02; k=2; x0=0.2; v0=1.2; t0 = 0;
m=0.5; betan=0.25; k=2; x0=0.2; v0=1.2; t0 = 0;
damping(m,betan,k,x0,v0,t0)