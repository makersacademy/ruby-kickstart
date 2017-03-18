# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

# I couldn't figure this one out on my own. I sort of understand how the method def works,
# but couldn't figure out how to get the required output. I will return to this later.

# with the commented-out code below, I get the puts lines returned. Why?

# puts "give me 2 numbers, with a space between them"
#
# class String

  def sum_difference_product
    a , b = gets.split.map { |num| num.to_i }
    puts a + b
    puts a - b
    puts a * b
  end

# input = ""
# input.sum_difference_product

# end
