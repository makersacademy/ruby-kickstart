# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

#split the numbers in the input string and put them into an array to work with
#add the two numbers together and save in a variable
#subtract one number from the other and transform to absolute value

def sum_difference_product
  input = gets.split
  numbers = input.map {|num| num.to_i}
  sum = numbers.inject(:+)
  difference = numbers.inject(:-)
  product = numbers.inject(:*)

  puts sum
  puts difference
  puts product
  
end
