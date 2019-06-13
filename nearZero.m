function max_adj = nearZero(x)

  zero_indeces_vector = find(x == 0);
  max_adj = -Inf;
  
  for i = 1:length(zero_indeces_vector)
      if zero_indeces_vector(i) == 1
          if x(zero_indeces_vector(i)+1) > max_adj
              max_adj = x(zero_indeces_vector(i)+1);
          end
      elseif zero_indeces_vector(i) == length(x)
          if x(zero_indeces_vector(i)-1) > max_adj
              max_adj = x(zero_indeces_vector(i)-1);
          end
      else
          if x(zero_indeces_vector(i)-1) > max_adj
              max_adj = x(zero_indeces_vector(i)-1);
          end
          if x(zero_indeces_vector(i)+1) > max_adj
              max_adj = x(zero_indeces_vector(i)+1);
          end
      end
  end
  
end
