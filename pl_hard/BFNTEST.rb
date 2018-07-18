input = Array.new

STDIN.each_line do |line|
  input.push(line)
end

code = input.join("")

for i in 0..code.size-1
  if code[i] == '/' && code[i+1] == '*'
    for j in i+2..code.size-1
      if code[j] == '*' && code[j+1] == '/'
        code.slice!(i..j+1)
        break
      end
    end
  end
end

if code.include? "//"
  arr = code.each_line.to_a
  arr.map! { |line|
    if line.include? "//"
      line.split("//")[0]
    else
      line
    end
  }
end
puts arr
