=begin
puts "Hello, start typing!"

while line = gets
  puts "You submitted #{line.inspect}"
  break if line.chomp == 'exit'
end

puts "Goodbye!"
=end


puts "Hello, start typing!"

while line = gets.chomp
  puts "You submitted #{line}"
  break if line == 'exit'
end

puts "Goodbye!"
