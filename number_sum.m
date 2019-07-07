function total = number_sum(str)
  
    numbers_only = regexp(str,'\d*','Match');

    total = 0;
    
    for i = 1:length(numbers_only)
        total = total + str2num(numbers_only{i});
    end

end
