function a = refcn_area_code(s)
    
    %% Consideting delimiters to separate string
    if contains(s,',')
        s = strsplit(s,',');
    elseif contains(s,';')
        s = strsplit(s,';');
    end

    vec_area_code = [];

    for i = 1:length(s)
        str_current = s{i};
        %% Case 1: String starts with three digits
        expr_form1 = '^\s?[(]?(\d{3})[)]?[-\s]\d{3}-\d{4}';
        %% Case 2: String starts with single digit
        expr_form2 = '^\s?[+]?\d{1}[-](\d{3})-\d{3}-\d{4}';
        %% Token taken in paranthesis previously
        replace = '$1';
        %% Replace to get area codes only
        str_area_code = regexprep(str_current,expr_form1,replace);
        str_area_code = regexprep(str_area_code,expr_form2,replace);
        vec_area_code = [vec_area_code,str2num(str_area_code)];

    end
    
    %% Sort vector and get unique elements
    vec_area_code = unique(vec_area_code);
    a = {};
    
    %% Convert area codes into cell of strings, as requested
    for k = 1:length(vec_area_code)
        a{k} = num2str(vec_area_code(k));
    end
    
end
