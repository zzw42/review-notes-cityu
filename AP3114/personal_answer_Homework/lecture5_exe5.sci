theta=0: 0.01: 5*%pi;
r1= theta;
r2=2 * theta;

scf(5);
clf(5);
polarplot(theta,r1,[2,2]);
polarplot(theta,r2,[5,2]);
xs2png(5,"5_5.png")
