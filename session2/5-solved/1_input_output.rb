# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  # your code goes here
  get_num = gets.chomp.split(' ')
  
  sum = get_num[0].to_i + get_num[1].to_i
  difference = get_num[0].to_i - get_num[1].to_i
  product = get_num[0].to_i * get_num[1].to_i
  
  puts sum
  puts difference
  puts product
end