def fun(arr)
  i = 1
  a = arr[0]
  while i < arr.length
    b = arr[i]
    c = least_common_multiple(a, b)
    a = c
    i += 1
  end
  c
end

def least_common_multiple(arg1, arg2)
	arg1 * arg2 / greatest_common_divisor(arg1, arg2)
end

def greatest_common_divisor(arg1, arg2)
  r = arg1
  q = arg2
  while q > 0
    p = r % q
    r = q
    q = p
  end
  r
end

t = gets.to_i
i = 0
args = Array.new
while i < t
  n = gets.to_i
  args.clear
  args = gets.chomp.split(' ').map(&:to_i)
  puts fun(args)
  i += 1
end
