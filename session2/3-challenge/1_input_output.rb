# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  input = gets.split(" ")
  b = input.pop.to_i
  a = input.pop.to_i
  sum = a + b
  difference = a - b
  product = a * b
  puts "#{sum}/n#{difference}/n#{product}/n"
end



