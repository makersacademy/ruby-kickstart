# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
input = gets.chomp.split
puts "#{input[0].to_i + input[1].to_i}\n#{input[0].to_i - input[1].to_i}\n#{input[0].to_i * input[1].to_i}"
end

# this was fairly straight forward, but got me thinking about new and more succinct
# ways to do things with methods I already knew. From looking at the
# given solution, I see it was unecessary for me to use a hash - I have "overcoded" once more.
# I also did not realise it was possible to get two or more variables from one input
# using the approach given in the solution i.e. a , b = gets.split.map { |num| num.to_i }
# it took me a little time to work this out, but a little research and I understand
# how split and map are combining to separate the numbers given in the STDIN and enumerate
# to put them into separate variables. Very neat! 
