# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

#input = gets.chomp

def sum_difference_product
	keyboard = gets.chomp
	numbers = keyboard.split(" ")
	sum = numbers[0].to_i+numbers[1].to_i
	difference = numbers[0].to_i-numbers[1].to_i
	product = numbers[0].to_i*numbers[1].to_i
	puts "#{sum.to_s}\n#{difference.to_s}\n#{product.to_s}" 
end

#sum_difference_product(input)