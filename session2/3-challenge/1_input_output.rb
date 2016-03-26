# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
	array = gets.chomp.split(" ")
  	one = array[0].to_i
  	two = array[1].to_i
  	print "#{one + two}\n#{one - two}\n#{one * two}\n"
end