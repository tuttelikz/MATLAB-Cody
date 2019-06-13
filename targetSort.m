function a_sorted = targetSort(a,t)

    dist_vector = [];
    
    for i = 1:length(a)
        dist_vector = [dist_vector, norm(a(i)-t)];
    end
    
    dist_pair = zeros(length(a),2);
    
    dist_pair(:,1) = dist_vector';
    dist_pair(:,2) = a';
    
    dist_pair_sorted = sortrows(dist_pair,'descend');
    
    a_sorted = dist_pair_sorted(:,2)';
end
