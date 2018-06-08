# returns the last digit of a to the power of b
def last_digit(a, b)
	a = a % 10
	b = b % 100
	if [0, 1, 5, 6].include?(a)
		result = a
	else
		b = b % 4
		result = (a ** b) % 10
	end
	result
end

D = gets.to_i
i = 0
while i < D do
	abArray = gets.chomp.split(' ').map(&:to_i)
	puts last_digit(abArray[0], abArray[1])
	i += 1
end