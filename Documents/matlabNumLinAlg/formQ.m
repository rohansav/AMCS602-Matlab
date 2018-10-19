function Q = formQ(W)
[m,n] = size(W);
Q = zeros(m,n);
for i = 1:n
    ei = zeros(n,1);
    ei(i) = 1;
   for k = n:-1:1
       vk = W(k:m,k);
       ei(k:m) = ei(k:m) - 2.*vk.*(dot(vk,ei(k:m)));
   end
   Q(:,i) = ei;
end
end