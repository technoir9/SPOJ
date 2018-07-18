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

arr = erasto(8000000)
f = File.new('output.txt', 'w')
f.write("[")
arr.each do |n|
  f.write("#{n} ")
end
f.write("]")
f.close
