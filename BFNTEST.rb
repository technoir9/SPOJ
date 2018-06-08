input = Array.new

STDIN.each_line do |line|
	input.push(line)
end

code = input.join("")

while code.include? "/*"
	code.slice!(code.index('/*')-1..code.index('*/')+1)
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