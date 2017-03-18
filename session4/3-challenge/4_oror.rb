# If you struggle on this question for ~30 minutes and aren't getting anywhere, look at the solutions file, try to understand the code, then close the file, come back here, and try again to solve it.

# Write a method first_object, that takes three parameters
# and returns the first one that is true.
#
# EXAMPLES:
# first_object 1, nil, nil    # => 1
# first_object nil, 1, nil    # => 1
# first_object nil, nil, 1    # => 1
# first_object nil, 1, 2      # => 1
# first_object nil, nil, nil  # => nil

def first_object(arg1, arg2, arg3)
to_return = arg1 if arg1
to_return ||= arg2 if arg2
to_return ||= arg3 if arg3

to_return
end

p first_object 1, nil, nil
p first_object nil, 1, nil
p first_object nil, nil, 1
p first_object nil, 1, 2
p first_object nil, nil, nil
