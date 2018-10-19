function [QC,RC] = clgs(A)
[m,n] = size(A);
QC = zeros(m,m);
RC = zeros(m,n);

for j = 1:n
   vj = A(:,j);
   for i=1:(j-1)
      RC(i,j) = QC(:,i)'*A(:,j);
      vj = vj - RC(i,j).*QC(:,i);
   end
   RC(j,j) = norm(vj);
   QC(:,j) = (1./ RC(j,j)).*vj;
end

end