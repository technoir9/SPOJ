def foo(a, sizeA, k, b, sizeB)
  if k == 0
    puts b.join(' ')
    return
  elsif k == sizeA
    if b.empty?
      puts a.join(' ')
    else
      puts "#{b.join(' ')} #{a.join(' ')}"
    end
    return
  end
  temp = a.at(0)
  c = Array.new(b)
  if !c.include?(temp)
    c << temp
    c.sort!
  end
  foo(a[1..sizeA], sizeA - 1, k - 1, c, sizeB + 1)
  foo(a[1..sizeA], sizeA - 1, k, b, sizeB)
end

t = gets.to_i
for i in 0..t-1
  arr = gets.chomp.split(' ').map(&:to_i)
  n = arr[0]
  a = (1..n).to_a
  b = Array.new
  foo(a, n, arr[1], b, 0)
  puts "\n"
end
