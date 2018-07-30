t = gets.to_i
for i in 0...t
  args = gets.chomp.split(' ').map(&:to_i)
  if args[0] % args[1] != 0
    puts "NIE"
  else
    puts "TAK"
  end
end
