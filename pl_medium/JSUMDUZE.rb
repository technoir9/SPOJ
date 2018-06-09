t = gets.to_i
i = 0
arr = Array.new
while i < t do
	arr = gets.chomp.split(' ').map(&:to_i)
	puts arr[0] + arr[1]
	i += 1
end
