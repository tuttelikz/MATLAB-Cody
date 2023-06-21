function X = rescale_scores(X)
	% Number of rows and columns in the matrix X
	[m, n] = size(X);

	% Define the function to calculate the GPA based on the score
	calculate_gpa = @(score) rescale(score, 0, 4, 'InputMin', 60, 'InputMax', 100);

	% Calculate the GPA for the last column
	gpa = arrayfun(calculate_gpa, X(:, n));

	% Replace the last column with the calculated GPA
	X(:, n) = gpa;

end