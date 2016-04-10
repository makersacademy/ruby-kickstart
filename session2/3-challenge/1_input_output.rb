# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
puts "Please type two integers separated by a space i.e. \"9 2\""

int_array = gets.chomp.split
int1 = int_array[0].to_i
int2 = int_array[1].to_i

puts int1 + int2
puts int1-int2
puts int1*int2

end
