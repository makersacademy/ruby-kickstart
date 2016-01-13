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

def match_maker(criteria, *sets)
  #go through each of the sets, in bulk of two
  score = []
  i = 0

  while i < sets.length do
    score << false if criteria == true and !!sets[i] == !!sets[i+1]
    score << true if criteria == false and !!sets[i] == !!sets[i+1]
    score << true if criteria == true and !!sets[i] != !!sets[i+1]
    score << false if criteria == false and !!sets[i]!= !!sets[i+1]
    i += 2
  end
  return score
end



  # using the criteria as lever, then determine what q to ask
  # add result to new array
  #return the array