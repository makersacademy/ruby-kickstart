# fill out the method below, then run the tests with
#   $ rake 1:2


# Given two numbers, a and b, return half of whichever is smallest, as a float
#
# arithmetic2(1, 2)    # => 0.5
# arithmetic2(19, 10)  # => 5.0
# arithmetic2(-6, -7)  # => -3.5

def arithmetic2(a, b) #defines the method
  if a < b            #checks it a is less than b
    a / 2.0           #divides a by a float if it is
  else                #else
    b / 2.0           #divides b by a float if not
  end                 #end the if statement
end                   #ends the method
