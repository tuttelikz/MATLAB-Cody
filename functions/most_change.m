function I = most_change(a)

    [people, ~] = size(a);
    money_total = zeros(1,people);
    
    for i = 1:people
        money_total(i) = a(i,1)*0.25 + a(i,2)*0.05 + a(i,3)*0.1 + a(i,4)*0.01;
    end
    
    [~,I] = max(money_total);
    
end
