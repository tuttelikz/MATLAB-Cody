function s2 = refcn_N(s1)
    
    %% First find two-word state names starting with N and replace
    expression1 = '(New|North) \w+';
    replace = '';
    s2 = regexprep(s1,expression1,replace);
    
    %% Next find, single-word names starting with N and replace
    expression2 = 'N(\w*)';
    s2 = regexprep(s2,expression2,replace);
    
end
