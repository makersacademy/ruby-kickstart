# remember, you can test this file with
#   $ rake 1:3


# Given a number, n, return 10 if it is even, and 20 if it is odd
#
# ten_twenty(5) # => 20
# ten_twenty(6) # => 10

# My solution 27 July 2018
def ten_twenty(n)
  # ternary conditional operator
  # test-expression ? if-true-expression : if-false-expression
  n % 2 == 0 ? 10 : 20
end
