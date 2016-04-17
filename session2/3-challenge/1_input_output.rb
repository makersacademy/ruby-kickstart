# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product

  input_numbers = gets # input from user

  # split input into two numbers
  numbers_array = input_numbers.split(" ")
  number_1 = numbers_array[0].to_i
  number_2 = numbers_array[1].to_i

  # work out values
  puts number_1 + number_2
  puts number_1 - number_2
  puts number_1 * number_2

end
