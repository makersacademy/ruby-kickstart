# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdef  # => "aceg"
# "".every_other_char         # => ""



class String                                  #Uses the String class
  def every_other_char                        #Defines the method
    answer = ''                               #Sets up a variable read to append the answer to
    each_char.with_index do |char, index|     #loops for anmount of characters and creates an index. Yield the two values into the block.
      answer << char if index.even?           #Appends the character to the block if the index value is even
    end                                       #Ends the loop
    answer                                    #Returns the answer
  end                                         #Ends the method
end                                           #Ends the class


=begin MY ATTMEPT AT ANSWER - but didn't work
class String                                  #Uses the String class
  def every_other_char                        #Defines the method
    answer = ''                               #Sets up a variable read to append the answer to
    num = each_char.length.to_i               #Creates a variable to equal the lenght of the string as an int
    num.times do |c|                          #Loops for the amount of times in the num variable
      answer << each_char[c] if c.odd?        #Appends the answer if the charater value is even
    end                                       #Ends the loop
    answer                                    #Returns the answer
  end                                         #Ends the method
end                                           #Ends the class
=end


=begin JOSH'S SOLUTION
class String
  def every_other_char
    to_return = ''
    each_char.with_index do |char, index|
      to_return << char if index.even?
    end
    to_return
  end
end
=end