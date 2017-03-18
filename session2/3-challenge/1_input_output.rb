# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.


def sum_difference_product
  a , b, c = gets.split.map { |num| num.to_i }
  puts a + b + c
  puts a - b - c
  puts a * b * c
end

# Q1: Why there are no argument (a, b) after def name
# Q2: There is gets, but where do we actually type in a,b?
# Q3: No way of knowing whether that is correct or wrong, cannot do puts def a,b etc.
puts sum_difference_product
