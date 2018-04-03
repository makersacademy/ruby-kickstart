# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product(a,b)
  # your code goes here
  # use .inspect to get /n like in examples ?
  # use p as it puts + .inspect
  # needs to include some kind of gets like the 2_gets.rb example 
  # below gives the correct answer in repl.it , needs to take the numbers from input using get
  # rather than explicitly using them as parameters
  p (a+b).to_s + "\n" + (a-b).to_s +  "\n" + (a*b).to_s

end