function product = word_product(string)
    
    small_alphabet = char(97:122);
    large_alphabet = char(65:90);
    
    product = 1;

    alphabet_value = strings(length(small_alphabet),2);
    
    for i = 1:length(small_alphabet)
        alphabet_value{i,1} = small_alphabet(i);
        alphabet_value{i,2} = large_alphabet(i);
    end

    for k = 1:length(string)
        [order,~] = find(strcmp(alphabet_value, string(k)));
        product = product*order;
    end
        
end
