# remember, you can test this file with
#   $ rake 1:3


# Given a number, n, return 10 if it is even, and 20 if it is odd
#
# ten_twenty(5) # => 20
# ten_twenty(6) # => 10

def ten_twenty(n)   #defines the method
  if n % 2 == 0     #checks the remainder of the devide to see if it equals 0
    10              #returns 10 if it is
  else
    20              #returns 20 if it's not
  end               #ends the if
end                 #ends the method