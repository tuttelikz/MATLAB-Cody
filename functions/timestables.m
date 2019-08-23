function m = timestables(n)

  m = zeros(n);
  counter = 1;
  
  for i = 1:n
      m(1,i) = counter;
      m(i,1) = counter;
      counter = counter + 1;
  end
  
  for i = 2:n
      for j = 2:n
          m(i,j) = m(i,1)*m(1,j);
      end
  end
  
end
