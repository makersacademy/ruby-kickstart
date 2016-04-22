# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product2
  # your code goes here
  first , second = gets.split.map { |num| num.to_i }
  print "#{first+second}\n#{first-second}\n#{first*second}\n"
end

#it's cool that you can assign variable using an array.
def sum_difference_product
   input = gets.chomp
   a = input.split[0].to_i
   b = input.split[1].to_i
   sum = a + b
   dif = a - b
   pro = a * b
   print "#{sum}\n#{dif}\n#{pro}\n"
end
