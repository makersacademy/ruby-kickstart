# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

#Here i'm just making a plain old method. Boring old method that takes an array as an argument.


  #Let me explain  I've done here a bit better.
  # answer << x (this is saying, shovel the element x into my empty array on line 12)
  # but only IF the following condition is true.
  # The condition breaks down like this.
  # array[i] - give me the element at index i
  # array [i+1] - give me the element at the next position along.
  # compare them - are they the same? If they are TRUE!
  #But hang on computer, there's more I need to know before I let you shovel x into my empty answer array.
  # I want to know that those two are the same AND these next to
  # array[i] - give me the element at index i (again)
  #array[i +2] - give me the element two spaces along
  #Are they the same?


#nifty code goes on in here.

# Lets go through an example?

# got_three? [1, 7, 7, 4, 4, 5, 5, 5]

def got_three?(array)
  answer = [] #I've made an empty array to shovel my answer in, when it comes... (This is empty)
  array.each_with_index {|x, i| answer << x if array[i] == array[i+1] && array [i] == array[i +2]}
    if answer.count >= 1 # You could make this into a nice ternary if you like ;)
      true
    else
      false
    end
end
