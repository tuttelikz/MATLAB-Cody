function vb = interpolator(va, a, b)

    right_bound = find(a > va, 1, 'first');
    left_bound = find(a < va, 1, 'last');
    
    vb = mean([b(left_bound) b(right_bound)]);

end
