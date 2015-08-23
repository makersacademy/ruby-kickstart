# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    to_return = ''
    #self.each_char.with_index   
    #string method --> .each_char {|c| print c, ' ' }
    #using .with_index do right after to be able to use the char and indexes
    each_char.with_index do |char, index|
      to_return << char if index.even?
    end
    to_return
  end
end


#"1,2,3,4".split(",").map { |s| s.to_i }
#.scan /\w/
#newarray = strin.split(//)
puts ("abcdefg".every_other_char)  # => "aceg"
puts ("".every_other_char)         # => ""
#puts ("0101010".every_other_char)  # =>  0000
#puts ("1010101".every_other_char)  # =>  1111
#puts ("!@#$%^&".every_other_char)  # =>  !#%&
#puts ("1".every_other_char)  # =>        1
#puts ("12".every_other_char)  # =>       1
#puts ("123".every_other_char)  # =>      13
#puts ("1234".every_other_char)  # =>     13
#puts ("12345".every_other_char)  # =>    135
#puts ("123456".every_other_char)  # =>   135
#puts ("1234567".every_other_char)  # =>  1357
