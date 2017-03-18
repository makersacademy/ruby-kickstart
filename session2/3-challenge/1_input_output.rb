# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  puts "Please give me two numbers to give you its sum, difference and product"
  integer1 = gets.chomp.to_i
  integer2 = gets.chomp.to_i
  sum = integer1 + integer2
  difference = integer1 - integer2
  product = integer1 * integer2
  puts "Here are your results respectively: #{sum}, #{difference}, #{product}"
end


sum_difference_product

