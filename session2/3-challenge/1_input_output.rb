# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

# t

def sum_difference_product
  a = gets.chomp.split(" ").map(&:to_i)
  # gets obtains the user's string and adds
  # a new line (/n) at the end of the
  # input.

  # gets.chomp obtains the user's string
  # and removes the /n.

  # .split(" ") splits the user's string
  # at each blank space in the user's
  # string.

  # .map maps each of the split out values
  # from the user's string to an array of
  # substrings, e.g.
  # => user's input = "1 2"
  # => ["1", "2"]

  # (&:to_i) converts the array elements
  # from substrings into integers

  # Finally, the resulting integer array is
  # assigned to the variable "a"

  puts a[0] + a[1]
  puts a[0] - a[1]
  puts a[0] * a[1]

  # a[0] picks index[0] in the array, e.g.
  # => 1
  # a[1] picks index[1] in the array, e.g.
  # => 2
  # Using the above, ruby is then able to
  # perform the calculations required, e.g.
  # +, - and *.

end



