# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  input = gets.chomp.split(" ")
  x = input[0].to_i
  y = input[1].to_i
  sum = x+y
  difference = (x-y)
  product = x*y
  return_var = [sum, difference, product]
  puts return_var

# your code goes here

end
