def sum_numbers(t)
	i = 0
	while i < t do
		n = gets.to_i
		numArray = gets.chomp.split(' ').map(&:to_i)
		puts numArray.inject(0){|sum,x| sum + x}
		i += 1
	end
end

t = gets.to_i
sum_numbers(t)
