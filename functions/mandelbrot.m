function N_correct = mandelbrot(C,lim)
    
    %% Matching dimensions
    N_correct = ones(size(C));
    length_C = size(C,1)*size(C,2);

    for k = 1:length_C
        %% Getting current value
        cur_C = C(k);
        %% Flag for checking presence of answer
        answer_present = false;
        for j = 1:lim
            %% Mandelbrot function
            if j == 1
                z = cur_C;
            else
                z = z.^2 + cur_C;
                %% Terminating condition
                if abs(z) > 2
                    answer_present = true;
                    N_correct(k) = j - 1;
                    break;
                end
            end
        end
        %% If there is no absolute value greater than 2
        if answer_present == false
            N_correct(k) = lim;
        end
    end

end
