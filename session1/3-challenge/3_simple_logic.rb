# Given a number, n, return 10 if it is even, and 20 if it is odd
#
# ten_twenty(5) # => 20
# ten_twenty(6) # => 10

def ten_twenty(n)
# use modulus to determine whether the number (n) is even or odd
  if n % 2 == 0
# return 10 if the number divides by two with no remainder (i.e. is even)
    10
  else
# otherwise return 20, as it must be odd
    20
# remember to end the if function!
  end
end
