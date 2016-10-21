# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

#define the method, the first true_or_false which explains how the result will be evaluated, and *elements for the unknown number of elements we will later receive
def match_maker(true_or_false, *elements)
  #create an empty array to store the results in
array = []

# for the elements, take two at a time, and call them first and second
elements.each_slice 2 do |first, second|
  # use our solution 'key' true_or_false
  result = if true_or_false
    # for true, if first and second are different, return true, for false, return false
      first != second
      true
      # for true, if first and second are the same, return false, for false return true
    else
      first == second
      false
    end
    #append the result to that array
    array << result
  end
