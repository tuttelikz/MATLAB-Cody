function B = swap_ends(A)
  B = A;
  k = B(:,1);
  B(:,1) = B(:,end);
  B(:,end) = k;
end
