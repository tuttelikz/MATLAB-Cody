function s2 = refcn_A(s1)
    %% Replace names which start with North/South/West with empty space
    s2 = regexprep(s1, '(North|South|West) ','');
    
    %% Replace state name which ends with 'a' to space
    s2 = regexprep(s2, '(\w*)a ',' ');
    
    %% Exception: if last state ends with 'a'
    if strcmp(s1(end),'a') == 1
        expression = '(\w*)a';
        index_except = regexp(s2,expression);
        s2 = regexprep(s2,s2(index_except(end):end),'');
    end
end
