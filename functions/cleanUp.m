function y = cleanUp(x)
  for j = 1:length(x)
      if (x(j) < 0) | (x(j) > 10)
          x(j) = NaN;
      end
  end
  y = x;
end
