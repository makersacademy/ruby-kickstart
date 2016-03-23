# fill out the method below, then run the tests with
#   $ rake 1:2


# Given two numbers, a and b, return half of whichever is smallest, as a float
#
# arithmetic2(1, 2)    # => 0.5
# arithmetic2(19, 10)  # => 5.0
# arithmetic2(-6, -7)  # => -3.5

def arithmetic2(a, b)
  if a > b
    b.to_f / 2
  else
    a.to_f / 2
  end
end

# though the above passes the rake test, what if the two numbers are equal?
# my prediction is that, it will still work - the first clause of the if statement
# will resolve as FALSE, so the method will move on to the else statement
# regardless of whether the two numbers are equal or not. So there is no need to
# write in an elsif to deal with the eventuality of the numbers being the same.
