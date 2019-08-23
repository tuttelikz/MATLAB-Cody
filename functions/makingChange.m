function fix_ints = makingChange(a)

    change_coins = [100 50 20 10 5 2 1 0.5 0.25 0.1 0.05 0.01];

    fix_ints = [];

    for i = 1:length(change_coins)
        b = change_coins(i);
        fix_ints = [fix_ints, fix(a/b+.0001)];
        a = mod(a,change_coins(i));
    end

end
