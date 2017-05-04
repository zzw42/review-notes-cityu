//Summary of sample statistics
M = int(100*rand(20,4))
mean(M,'r')
mean(M,'c')
//median(M,'r')
//stdev(M,'r')
//mean(M)
//median(M)
//stdev(M)

// covariance and correlation
x = 5 * rand(1,10);
y = 5 * rand(1,10);
sx = stdev(x);
sy = stdev(y)'
[sxy meanxy] = corr (x,y,1) //covariance, mean of x and y
rxy = sxy/ (sx * sy) //correlation
