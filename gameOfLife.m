function B = gameOfLife(A)
    
    %% Create extra rows and cols padding for toroidal condition
    A(end:end+2,:) = 0;
    A(:,end:end+2) = 0;
    A_pad = circshift(A,[1 1]);
    
    %% Define first and last rows for toroidal condition 
    A_pad(1,2:end-1) = A_pad(end-1,2:end-1);
    A_pad(end,2:end-1) = A_pad(2,2:end-1);
    %% Define first and last cols for toroidal condition 
    A_pad(2:end-1,1) = A_pad(2:end-1,end-1);
    A_pad(2:end-1,end) = A_pad(2:end-1,2);
    %% Define corners
    A_pad(1,1) = A_pad(end-1,end-1);
    A_pad(end,1) = A_pad(2,end-1);
    A_pad(1,end) = A_pad(end-1,2);
    A_pad(end,end) = A_pad(2,2);

    [h,w] = size(A_pad);
    next_step_padding = zeros(size(A_pad));

    for j = 2:h-1
        for i = 2:w-1
            %% Get [3,3] submatrix
            A_submat = A_pad(j-1:j+1,i-1:i+1);
            %% Underpopulation
            if A_pad(j,i) == 1 && nnz(find(A_submat)) < 3
                next_step_padding(j,i) = 0;
            %% Normal life
            elseif (A_pad(j,i) == 1) && (nnz(find(A_submat)) == 3 || nnz(find(A_submat)) == 4) 
                next_step_padding(j,i) = 1;
            %% Overpopulation
            elseif A_pad(j,i) == 1 && (nnz(find(A_submat)) > 4) 
                next_step_padding(j,i) = 0;
            %% Birth 
            elseif A_pad(j,i) == 0 && (nnz(find(A_submat)) == 3) 
                 next_step_padding(j,i) = 1;
            end
        end
    end
    
    B = next_step_padding(2:end-1,2:end-1);
    
end
