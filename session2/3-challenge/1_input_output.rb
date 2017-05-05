# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  puts "Type somethign in"
  x = gets.chomp.to_i
  puts "Type somethign else in"
  y = gets.chomp.to_i

  print x + y
  print x - y
  print x * y
end

whatever = sum_difference_product
