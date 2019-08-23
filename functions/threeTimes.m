function threetimes_vector = threeTimes(x)

    x_unique = unique(x);
        
    threetimes_vector = [];
    
    for i = 1:length(x_unique)
        occurrence = numel(find(x == x_unique(i)));
        if occurrence == 3
            threetimes_vector = [threetimes_vector, x_unique(i)];
        end
    end
    
end
