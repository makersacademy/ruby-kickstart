# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  # your code goes here
num1, num2 = gets.split.map {|n| n.to_i} #seperate the two inputs and convert to integer
puts num1 + num2
puts num1 - num2
puts num1 * num2
end
