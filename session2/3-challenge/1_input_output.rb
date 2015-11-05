# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

=begin
This is what I was doing, that doesn't work:

def sum_difference_product
  input = gets.chomp
  array = input.split(" ").map { |x| x.to_i }
  sum = array[0] + array[1]
  difference = array[0] - array[1]
  product = array[0] * array[1]
  result = ""
  result << sum
  result << difference
  result << product
  return result
end
sum_difference_product

And this is what I've been suggested on stacoverflow, that doesn't work:

def sum_difference_product
  input = gets.chomp
  array = input.split(" ").map { |x| x.to_i }
  pp array
  sum = array.fetch(0) + array.fetch(1)
  difference = array[0] - array[1]
  product = array[0] * array[1]
  result = []
  result << sum
  result << difference
  result << product
  return result.join(" ")
end
puts sum_difference_product
=end

def sum_difference_product
  input = gets.chomp
  array = input.split(" ").map { |x| x.to_i }
  puts array[0] + array[1]
  puts array[0] - array[1]
  puts array[0] * array[1]
end
