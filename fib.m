function f = fib(n)
  
  sequence = zeros(1,n);
  sequence(1,1) = 1;
  sequence(1,2) = 1;
  
  if n == 1
      f = 1;
  elseif n == 2
      f = 1;
  else 
      for i = 3:n
          sequence(1,i) = sequence(1,i-1) + sequence(1,i-2);
      end
      f = sequence(1,n);
  end

end
