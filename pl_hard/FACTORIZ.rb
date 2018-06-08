def factorize(arg, primes)
	arr = Array.new
	index = 0
	div = primes[index].to_i
	while arg > 1
		while arg % div == 0
			arr.push(div)
			arg /= div
		end
		index += 1
		div = primes[index].to_i
	end
	arr.join("*")
end

def erasto(arg1)
	arg = arg1 + 1
	arr = Array.new(arg, true)
	i = 2
	while i < Math.sqrt(arg)
		if arr[i] == true
			j = i*i
			while j < arg
				arr[j] = false
				j += i
			end
		end
		i += 1
	end
	it = 2
	result = Array.new
	while it < arg
		if arr[it] == true
			result.push(it)
		end
		it += 1
	end
	result
end

k = gets.to_i
i = 0
arr = erasto(8000000)
while i < k
	n = gets.to_i
	puts factorize(n, arr)
	i += 1
end