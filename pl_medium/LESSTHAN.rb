n = gets.to_i
i = 0
arr = Array.new
while i < n
	arr << gets.to_i
	i += 1
end
arr.sort!
gets
k = gets.to_i
j = 0
while j < k
	b = gets.to_i
	a = arr.index { |m| m >= b }
	# w przypadku, gdy b jest większe od wszystkich elementów arr, to a == nil
	# poniższa linijka zwróci w tym przypadku rozmiar tablicy arr
	# w pozostałych przypadkach wartość 'a' nie ulega zmianie
	a ||= arr.size
	puts a
	j += 1
end
