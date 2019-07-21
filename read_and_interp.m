function t = read_and_interp(s)
    
    %% Index for first meeting index of '9999'
    main_counter = 1;
    %% Increment for consequent additional indeces of '9999'
    sec_counter = 0;
    %% Count how many times '9999' met
    countreps = 0;
    %% Flag to check if there is any '9999'
    flag_notmet = false;
    
    while isempty(strfind(s{main_counter},'9999'))
        %% If '9999' not met
        if main_counter == length(s)
            flag_notmet = true;
            break;
        else
            main_counter = main_counter + 1;
        end
    end
    
    %% If there is one '9999'
    if flag_notmet == false
        if ~isempty(main_counter)
            countreps = countreps + 1;
            %% Check when sequence of '9999' ends
            while ~isempty(strfind(s{main_counter+1+sec_counter},'9999'))
                sec_counter = sec_counter + 1;
            end
        end
        %% Count number of missing data
        countreps = countreps + sec_counter;
        %% Get integer before first '9999'
        pa = strsplit(s{main_counter-1});
        pa = str2double(pa(3));
        %% Get integer after last '9999'
        pb = strsplit(s{main_counter + sec_counter+1});
        pb = str2double(pb(3));
        %% Interpolated vector: '+2' for excluding first and last
        interp_arr = linspace(pa,pb,countreps+2);
        %% Starting inserting interpolated vector elements from second element
        s_counter = 2;            
        
        for i = 2:length(s)
            if ~isempty(strfind(s{i},'9999'))
                %% Replace '9999' element with new interpolated value
                s{i} = strrep(s{i},'9999',num2str(interp_arr(s_counter)));
                s_counter = s_counter+1;
            end
        end
    end
    
    %% Get only the missing data values into new vector
    t = [];
    
    for k = 2:length(s)
        vect = strsplit(s{k});
        t = [t,str2double(vect(3))];
    end
    
end
