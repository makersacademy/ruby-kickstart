# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  # your code goes here
  #puts 'test'
  line = gets.chomp.split(' ')
  #line = line.chomp.split(' ')
  # puts line[0]
  # puts line[1]

  # arg1 = line[0].to_i
  # arg2 = line[1].to_i

  puts line[0].to_i + line[1].to_i
  puts line[0].to_i - line[1].to_i
  puts line[0].to_i * line[1].to_i
end

# sum_difference_product