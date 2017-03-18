# Unlike methods, procs can see the environment they're defined in.
count = 0
incrementer = Proc.new { count += 1 }

count                         # => 0
incrementer.call
count                         # => 1
incrementer.call
count                         # => 2

# In this case, our Proc has access to the 'count' variable.
# If we tried to defined a method that incremented the count value by 1 however, we'd get an 'undefined method '+' for
# nil:NilClass' error, as 'count' does not exist within the scope of the method.

# They keep the environment they were defined in
# even if they get passed into a new scope.
def invoke_10_times(proc)
  10.times { proc.call }
end

count                         # => 2
invoke_10_times incrementer
count                         # => 12
