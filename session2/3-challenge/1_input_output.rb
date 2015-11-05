# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  puts "Please enter two integers, seperated by a space..."
  inputs = gets.chomp.split(' ')
  inputs.each_with_index {|n, i| inputs[i] = n.to_i}
  sum = inputs[0] + inputs[1]
  difference = inputs[0] - inputs[1]
  product = inputs[0] * inputs[1]

  puts sum
  puts difference
  puts product
end
