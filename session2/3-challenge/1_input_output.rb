# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  raw_input = gets.chomp
  raw_numbers = raw_input.split(' ')
  numbers = []
  raw_numbers.each{|nr| numbers << nr.to_i}

  sum = numbers[0] + numbers[1]
  difference = numbers[0] - numbers[1]
  product = numbers[0]*numbers[1]

  puts sum, difference, product

end


