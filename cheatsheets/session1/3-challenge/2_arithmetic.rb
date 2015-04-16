# Given two numbers, a and b, return half of whichever is smallest, as a float
#
# arithmetic2(1, 2)    # => 0.5
# arithmetic2(19, 10)  # => 5.0
# arithmetic2(-6, -7)  # => -3.5

def arithmetic2(a, b)
# determining whether a is smaller than b
  if a < b
# dividing by 2 in float format will return half in float format
    a / 2.0
# if a is not less than b, b must be smaller, so run the calculation on b instead
  else
    b / 2.0
  end
end
