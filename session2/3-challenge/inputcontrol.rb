# Prompt the user for a number, then read it in and print out "hi" that many times
#
# Repeat this process until the user submits "bye", then say "goodbye" and end the program

puts "Enter a number"
number = gets.chomp
while number != "bye"
	puts "hi " * number.to_i
	puts "Enter a number"
	number = gets.chomp
end
puts "goodbye"
	