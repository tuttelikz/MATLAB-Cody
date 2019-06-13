function rowMaxNnzElements = fullest_row(a)

  [row,~] = size(a);
  nnzElements = 0;
  rowMaxNnzElements = 0;
  
  for i = 1:row
      if nnz(a(i,:)) > nnzElements
          nnzElements = nnz(a(i,:));
          rowMaxNnzElements = i;
      end
  end
  
end
