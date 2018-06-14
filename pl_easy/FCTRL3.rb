def twoLastDigitsOfFactorial(arg)
	if arg > 9
		puts "0 0"
	elsif [5, 6, 8].include? arg
		puts "2 0"
	elsif arg == 9
		puts "8 0"
	elsif arg == 7
		puts "4 0"
	elsif arg == 4
		puts "2 4"
	elsif arg == 3
		puts "0 6"
	elsif arg == 2
		puts "0 2"
	elsif arg == 1
		puts "0 1"
	elsif arg == 0
		puts "0 1"
	end
end

D = gets.to_i
i = 0
while i < D
	n = gets.to_i
	twoLastDigitsOfFactorial(n)
	i += 1
end
