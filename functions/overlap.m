function s3 = overlap(s1,s2)
    
    s1_len = length(s1);
    s2_len = length(s2);
    
    %% Create NaN filled vectors of s1 and s2
    nan_vec_s1 = NaN(1,s1_len+s2_len+s2_len);
    nan_vec_s1(s2_len+1:s2_len+s1_len) = s1;
    nan_vec_s2 = NaN(1,s1_len+s2_len+s2_len);
    nan_vec_s2(1:s2_len) = s2;
    
    %% Setting initial params
    s3_length = Inf;
    ind2_endlim = length(nan_vec_s2)-s2_len+1;
    count_forw = 0;
    flag_incorrect = false;

    for i = 1:ind2_endlim
        nan_vec_s2 = NaN(1,s1_len+s2_len+s2_len);
        %% Shifting NaN vector of s2 to +1 each iteration
        nan_vec_s2(i:s2_len+count_forw) = s2;
        %% Check for common elements
        if ~isempty(find(nan_vec_s1 == nan_vec_s2))
            
            ind = find(nan_vec_s1 == nan_vec_s2);
            flag_incorrect = false;
            
            %% If there are elements to the left of the first common element
            if ~isempty(nan_vec_s2(i:ind(1)-1))
                %% Either elements to the left are same or NaN
                if isequal(nan_vec_s2(i:ind(1)-1),nan_vec_s1(i:ind(1)-1)) || isnan(nan_vec_s1(ind(1)-1)) 
                    flag_incorrect = false;
                else
                    %% No overlap
                    flag_incorrect = true;
                end
            end
            %% If there are elements to the right of the first common element
            if ~isempty(nan_vec_s2(ind(end)+1:s2_len+count_forw))
                %% Either elements to the right are same or NaN
                if isequal(nan_vec_s2(ind(end)+1:s2_len+count_forw),nan_vec_s1(ind(end)+1:s2_len+count_forw)) || isnan(nan_vec_s1(ind(end)+1)) || isnan(nan_vec_s2(ind(end)+1))
                    flag_incorrect = false;
                else
                    %% No overlap
                    flag_incorrect = true;
                end
            end
            
            %% If overlaps are detected
            if flag_incorrect == false
                %% Find the index where to combine them
                a = find(isnan(nan_vec_s1) == 0);
                b = find(isnan(nan_vec_s2) == 0);
                min_v = min(a(1),b(1));
                
                %% Depending on the minimum indices, combine chains
                if min_v == b(1)
                    vec_chain = [nan_vec_s2(b(1:end)),nan_vec_s1(b(end)+1:a(end))];
                elseif min_v == a(1)
                    vec_chain = [nan_vec_s1(a(1:end)),nan_vec_s2(a(end)+1:b(end))];
                end
                
                %% Find the shortest chain
                cur_jjlen = length(vec_chain);
                if cur_jjlen < s3_length
                    s3_length = cur_jjlen;
                    s3 = vec_chain;
                end
                
            end
        end
        %% Shifting increment
        count_forw = count_forw + 1;
    end

end
