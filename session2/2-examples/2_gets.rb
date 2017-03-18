puts "Hello, start typing!"

while line = gets
  puts "You submitted #{line}"
  break if line.chomp == 'exit'
end

puts "Goodbye!"
