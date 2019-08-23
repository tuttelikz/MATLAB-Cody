function s2 = refcn_2word(s1)

    %% Indicates keyword and next word
    expression = '(Rhode|New|North|North|South|West) \w+';
    replace = '';
    
    s2 = regexprep(s1,expression,replace);
    
end
