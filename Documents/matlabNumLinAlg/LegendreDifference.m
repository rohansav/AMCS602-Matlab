function x =  LegendreDifference(n)
t = (-2^n:2^n)'/2^n;
poly = [legendreP(0,t),legendreP(1,t),legendreP(2,t),legendreP(3,t)];

x = abs(poly - Legendre(n));

figure;
hold on
for ii = 1:4
 plot(x(:,ii));
end

end