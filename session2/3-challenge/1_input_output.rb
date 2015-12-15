# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  numbers = gets.chomp
  numbers = numbers.split(" ")
  i = 0
  numbers.each {|x| 
    numbers[i] = x.to_i
    i +=1
  }
  sum = numbers[0] + numbers[1]
  difference = numbers[0]-numbers[1]
  product = numbers[0]*numbers[1]
  puts sum
  puts difference
  puts product
end
