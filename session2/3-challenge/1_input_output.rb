# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  input = gets.chomp
  number_1 = input.split(" ")[0].to_i
  number_2 = input.split(" ")[1].to_i

  sum = number_1 + number_2
  diff = number_1 - number_2
  prod = number_1 * number_2

  print sum.to_s + "\n"
  print diff.to_s + "\n"
  print prod.to_s + "\n"
end
