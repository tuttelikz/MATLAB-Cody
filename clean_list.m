function names_out = clean_list(names_in)
    
    names_in_lower = lower(names_in);
    [~,ia] = unique(names_in_lower,'stable');
    
    names_out = names_in(ia);

end
