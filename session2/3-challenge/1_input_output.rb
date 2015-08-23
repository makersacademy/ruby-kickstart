# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product(input)
  x = input.gsub(/\s+/m, ' ').strip.split(" ")[0].to_i
  y = input.gsub(/\s+/m, ' ').strip.split(" ")[1].to_i
  puts x + y
  puts (x - y).abs
  puts x * y
end

puts "Please enter two numbers seperated by one whitespace and hit RETURN:"
input = gets.chomp

sum_difference_product(input)