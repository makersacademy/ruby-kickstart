# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
n1, n2 = gets.split.map(&:to_i) # n1, n2 = gets.split.map { |n| n.to_i }
puts n1 + n2
puts n1 - n2
puts n1 * n2
end


#http://ruby.about.com/od/strings/a/Splitting-Strings.htm
