# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
#


# FIRST ATTEMPT
#
# def got_three?(array)
#   not_got_three = []
#   array.each do |element|
#     while array.length > 1
#       element = array.shift
#       if element == array[0, 1]
#         return true
#       else
#         not_got_three.push element
#       end
#     break
#   end
# end

# REFACTORED WITH SOLUTION          # SOLUTION

def got_three?(array)               # def got_three?(elements)
  array.each_cons 3 do |a, b, c|    #   elements.each_cons 3 do |a, b, c|
      if a == b && b == c           #     return true if a == b && b == c
        return true                 #   end
      else                          #   false
        false                       # end
      end
  end
end