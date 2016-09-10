# If you struggle on this question for ~30 minutes and aren't getting anywhere, look at the solutions file, try to understand the code, then close the file, come back here, and try again to solve it.

# Write a method that receives a number 1 through 5.
# Depending on the value of the number, it will raise
# some particular type of exception.
#
# HINT:
#   All exceptions and errors are descendants of Exception.
#   (Exception is listed as an ancestor)
#
# Examples:
#   exception_raiser 1   # =>   #<RuntimeError: No 1s allowed!>
#   exception_raiser 2   # =>   #<ArgumentError: No 2s allowed!>
#   exception_raiser 3   # =>   #<Exception: No 3s allowed!>
#   exception_raiser 4   # =>   #<SyntaxError: No 4s allowed!>
#   exception_raiser 5   # =>   #<RubyKickstartException: No 5s allowed!>

class RubyKickstartException < Exception
end

def exception_raiser(n)
  if n == 1 
    raise "No 1s allowed!"
  elsif n == 2  
    raise ArgumentError, "No 2s allowed!"
  elsif n == 3 
    raise  Exception, "No 3s allowed!"
  elsif n == 4 
    raise SyntaxError, "No 4s allowed!"
  elsif n == 5
    raise RubyKickstartException, "No 5s allowed!"
  end
end

