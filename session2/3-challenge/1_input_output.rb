# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.




def sum_difference_product    #defines the method
a, b = gets.split             #uses the split mehtod to split the input into var a and b
  a = a.to_i                  #converts a to an int
  b = b.to_i                  #converts b to an int
  puts a + b                  #puts the sum of a and b
  puts a - b                  #puts the difference between a and b
  puts a * b                  #puts the product of a and b
end                           #ends the methodß


#
=begin JOSH'S SOLUTION
def sum_difference_product
  a , b = gets.split.map { |num| num.to_i }
  puts a + b
  puts a - b
  puts a * b
end
=end