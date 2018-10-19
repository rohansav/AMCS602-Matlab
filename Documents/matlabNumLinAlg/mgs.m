function [QM,RM] = mgs(A)
[m,n] = size(A);
QM = zeros(m,m);
RM = zeros(m,n);
V = zeros(m,n);
for i = 1:n
   V(:,i) = A(:,i); 
end

for i = 1:n
   RM(i,i) = norm(V(:,i));
   QM(:,i) = (1./RM(i,i)).*V(:,i);
   for j = (i+1):n
      RM(i,j) = QM(:,i)'*V(:,j);
      V(:,j) = V(:,j) - RM(i,j).*QM(:,i);
   end
end

end

