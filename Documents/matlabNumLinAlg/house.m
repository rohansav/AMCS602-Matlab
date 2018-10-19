function [W,R] = house(A)
[m,n] = size(A);

Acop = A;
W = zeros(m,n);
for k = 1:n
   x = Acop(k:m,k);
   e1 = zeros(size(x));
   e1(1) = 1;
   vk = sign(x(1))*norm(x).*e1 + x;
   vk = (1./norm(vk)).*vk;
   Acop(k:m,k:n) = Acop(k:m,k:n) - 2*vk*(vk'*Acop(k:m,k:n));
   W(k:m,k) =  vk;
end

R = Acop(1:n,1:n);


end