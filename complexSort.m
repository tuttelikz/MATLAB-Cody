function zSorted = complexSort(z)

    absZ = abs(z);
    
    pairValueKey = zeros(length(z),2);
    pairValueKey(:,1) = absZ';
    pairValueKey(:,2) = z';
    pairValueKey = sortrows(pairValueKey,'descend');
    zSorted = pairValueKey(:,2)';

end
