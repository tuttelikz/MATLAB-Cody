function result=longrun(a)

	% Determine if input vector is a row or a column vector
	is_row_vector = isrow(a);

	% Ensure a is a row vector for processing
	if ~is_row_vector
		a = a';
	end

	% Initialize variables
	max_count = 0;
	current_count = 1;
	result = [];

	% Iterate through the vector and count consecutive repetitions
	for i = 2:length(a)
		if a(i) == a(i-1)
			current_count = current_count + 1;
		else
			current_count = 1;
		end
		
		if current_count > max_count
			max_count = current_count;
			result = a(i);
		elseif current_count == max_count
			result = [result, a(i)];
		end
	end

	% If max_count is 1, assign all unique elements of 'a' to the result
	if max_count == 1
		result = a;
	end

	% Remove duplicates from the result
	% result = unique(result);

	% If the input vector is a column vector, convert the result back to a column vector
	if ~is_row_vector
		result = result';
	end

end