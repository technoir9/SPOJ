def gray(n, arr, k, direction)
	if n == k
		puts arr.join('')
		return
	end
	if direction == 1
		arr[k] = 0
		gray(n, arr, k+1, 1)
		arr[k] = 1
		gray(n, arr, k+1, 0)
	else
		arr[k] = 1
		gray(n, arr, k+1, 1)
		arr[k] = 0
		gray(n, arr, k+1, 0)
	end
end

t = gets.to_i
arr = Array.new
for i in 0..t
	n = gets.to_i
	gray(n, arr, 0, 1)
	puts "\n"
	arr.clear
end
