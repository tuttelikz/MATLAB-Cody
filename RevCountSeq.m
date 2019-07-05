function final_vec = RevCountSeq(x)

    x_odd = x(1:2:end);
    x_even = x(2:2:end);

    final_vec = [];

    for i = 1:length(x_odd)
        for j = 1:x_odd(i)
            final_vec = [final_vec, x_even(i)];
        end
    end

end
