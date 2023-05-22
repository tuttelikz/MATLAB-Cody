function y = damped_cos(lambda, T, N)
    % Set input values
    A = 1;
    f = 1;

    % Create linearly spaced vector t from 0 to T with N elements
    t = linspace(0, T, N);

    % Calculate the damped sinusoid
    y = A * exp(-lambda*t) .* cos(2*pi*f*t);

end