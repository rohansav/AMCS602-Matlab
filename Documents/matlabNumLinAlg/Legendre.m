function Q = Legendre(n)

x = (-2^n:2^n)'/2^n;
A = [x.^0 x.^1 x.^2 x.^3];
[Q,R] = qr(A,0);

scale = Q(2^(n+1)+1,:);
Q = Q*diag(1 ./scale);

plot(Q);

end