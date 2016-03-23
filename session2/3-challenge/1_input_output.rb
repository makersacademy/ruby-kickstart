# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  puts "Please input a number:"
  number_string = gets.chomp
  number = number_string.split(' ')
  sum = number[0].to_i + number[1].to_i
  difference = number[0].to_i - number[1].to_i
  product = number[0].to_i * number[1].to_i
  puts sum
  puts difference
  puts product
end
