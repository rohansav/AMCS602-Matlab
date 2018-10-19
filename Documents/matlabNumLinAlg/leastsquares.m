function x = leastsquares(A,b)
A1 = A'*A;
b1 = A'*b;
R = chol(A1);
w = b1/R';
x = w/R;
end