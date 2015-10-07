# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keyboard
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  input = gets.chomp.split.map { |num| num.to_i }
  sum = input[0] + input[1]
  diff = input[0] - input[1]
  prod = input[0] * input[1]
  print "#{sum}\n#{diff}\n#{prod}\n"
end