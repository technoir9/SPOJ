def last_non_zero_digit(arg)
	if arg < 10
		result = $arr[arg]
	else if ((arg/10)%10)%2 == 0
			result = (6*last_non_zero_digit(arg/5)*$arr[arg%10]) % 10
		else
			result = (4*last_non_zero_digit(arg/5)*$arr[arg%10]) % 10
		end
	end
	result
end

$arr = [1, 1, 2, 6, 4, 2, 2, 4, 2, 8]
t = gets.to_i
i = 0
while i < t do
	n = gets.to_i
	puts last_non_zero_digit(n)
	i += 1
end