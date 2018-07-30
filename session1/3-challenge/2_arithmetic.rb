# fill out the method below, then run the tests with
#   $ rake 1:2


# Given two numbers, a and b, return half of whichever is smallest, as a float
#
# arithmetic2(1, 2)    # => 0.5
# arithmetic2(19, 10)  # => 5.0
# arithmetic2(-6, -7)  # => -3.5

# My solution - 27 July 2018
def arithmetic2(a, b)
  if a < b
    a.to_f / 2
  else
    b.to_f / 2
  end
end

=begin
# Makers solution
# Division by a float forces return of a float!
def arithmetic2(a, b)
  if a < b
    a / 2.0
  else
    b / 2.0
  end
end
=end
