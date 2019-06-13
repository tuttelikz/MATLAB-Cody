function B = remove_nan_rows(A)

    B = [];

    isNanA = isnan(A);
    [rows,~] = size(isNanA);

    for i = 1:rows
        if sum(isNanA(i,:)) < 1
            B = [B; A(i,:)];
        end
    end

end
