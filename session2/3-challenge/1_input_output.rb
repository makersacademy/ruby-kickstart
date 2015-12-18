# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  puts "Give me two integers seperated by a space"
  num1, num2 = gets.chomp.split(" ").map {|num| num.to_i }
  puts num1 + num2
  puts (num1 - num2).abs
  puts num1 * num2
end
sum_difference_product
