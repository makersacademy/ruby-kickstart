# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product

  puts "Please type in a number:"
  number_1 = gets.chomp.to_i
  puts "Please type in a second number:"
  number_2 = gets.chomp.to_i

  sum = number_1 + number_2
  difference = number_1 - number_2
  product = number_1 * number_1

  puts "The sum of your two numbers is #{sum}", "The difference of your two numbers is #{difference}", "and the product of your two numbers is #{product}"

end

sum_difference_product