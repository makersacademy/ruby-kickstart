# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.


def sum_difference_product
    a , b = gets.split.map { |x| x.to_i }
    puts a + b
    puts a - b
    puts a * b
end


#Can it be done this this or does this not take into account user input?

def sum_difference_product(x,y)
  # your code goes here
  b = x + y
  c = x - y
  d = x * y
  puts "#{b}\n#{c}\n#{d}\n"
end