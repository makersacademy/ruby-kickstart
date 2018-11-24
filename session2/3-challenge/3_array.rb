# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    # arr = gets.to_s.split('')
    # arr.each_index.select {|i| i.even?}.map {|x| arr[x]}.join('') 

    result = '' 
    each_char.with_index {|x, i|
      result << x if i.even?
    }
    result    
  end
  
end
