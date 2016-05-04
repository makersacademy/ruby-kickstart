# puts "Hello, start typing!"

# while line = gets
#   puts "You submitted #{line.inspect}"
#   break if line.chomp == 'exit'
# end

# puts "Goodbye!"

puts "Please type in a number"
number = gets.chomp

while line = gets
	number.times {print "hi "}
	break if line.chomp == 'bye'
end