# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  input = gets.chomp
  arr = input.split(" ")
  sum = arr[0].to_i + arr[1].to_i
  difference = arr[0].to_i - arr[1].to_i
  product = arr[0].to_i * arr[1].to_i
  puts sum.to_s
  puts difference.to_s
  puts product.to_s
end
