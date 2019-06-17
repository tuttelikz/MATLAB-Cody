function [index1, index2] = nearestNumbers(A)

    distances = zeros(length(A),length(A));

    for j = 1:length(A)
        for i = 1:length(A)
            if i == j
                distances(j,i) = inf;
            else
                distances(j,i) = norm(A(i)-A(j));
            end
        end
    end
    
    %% Finding row and column (notes) of nearest distances 
    [~, index] = min(distances(:));
    [row, col] = ind2sub(size(distances), index);

    nearest_indeces = [row, col];
    nearest_indeces = sort(nearest_indeces);
    
    index1 = nearest_indeces(1);
    index2 = nearest_indeces(2);
    
end
