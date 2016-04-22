# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  input = gets.chomp
  input_array = input.split(" ")
  first_digit = input_array[0].to_i
  second_digit = input_array[1].to_i

  # find sum
  sum = first_digit + second_digit

  # find difference
  difference = (first_digit - second_digit)

  # find product
  product = first_digit * second_digit

  # print ouptut
  print "#{sum}\n#{difference}\n#{product}"
end
