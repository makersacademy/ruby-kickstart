# Remember you can test this code with
#   $ rake 2:1

<<<<<<< HEAD
# Write a program that reads in two integers typed on the keyboard
=======
# Write a program that reads in two integers typed on the keybaord
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

<<<<<<< HEAD
puts "Hello! Please type two random numbers, with a space between the two! We'll then figure out the sum, difference and product of those two numbers\:"

  #our input will be 'firstnumber secondnumber \n' - can get these,then turn into array? Can't find anymethods to separate the variables using strings
  #sum will be 'firstnumber+secondnumber'
  #difference will be along lines of 'root(square(firstnumber-secondnumber'
  #product will be 'firstnumber*secondnumber'
  #output will be 'puts sum \n difference \n product'

line = gets.chomp
  line_to_array = line.split(" ")
  firstnumber = line_to_array[0].to_i
  secondnumber = line_to_array[1].to_i
  
def sum_difference_product(firstnumber,secondnumber)
  sum = firstnumber + secondnumber
  difference = (firstnumber-secondnumber).abs #gives absolute value i.e. always positive
  product = firstnumber*secondnumber
  puts sum
  puts difference
  puts product

end

sum_difference_product(firstnumber,secondnumber)



=======
def sum_difference_product
  # your code goes here
  
end
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
