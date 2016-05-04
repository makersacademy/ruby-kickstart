# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  puts "Please enter 2 integers"
  num_arr = gets.chomp.split(" ").map(&:to_i)
  num1 = num_arr[0]
  num2 = num_arr[1]
  puts num1 + num2
  puts num1 - num2
  puts num1 * num2
  puts
end