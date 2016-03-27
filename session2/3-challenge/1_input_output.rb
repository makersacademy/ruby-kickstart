# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
	# Get the input numbers from the keyed input
  input = gets.split.map {|e| e.to_i}
  x = input[0]
  y = input[1]

  # Perform the arithmetic operations
  puts x + y
  puts x - y
  puts x * y

end