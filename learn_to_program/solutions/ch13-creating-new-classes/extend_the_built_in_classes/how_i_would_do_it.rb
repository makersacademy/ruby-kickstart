# class Array
#   def shuffle
#     sort_by{rand} # "self" is implied, remember?
#   end
# end
# note modern ruby has already has a built in shuffle method

class Integer
  def factorial
    raise 'Must not use negative integer' if self < 0
    (self <= 1) ? 1 : self * (self-1).factorial
  end
  def to_roman
    # I chose old-school roman numerals just to save space.
    raise 'Must use positive integer' if self <= 0
    roman = ''
    roman << 'M' * (self / 1000)
    roman << 'D' * (self % 1000 / 500)
    roman << 'C' * (self % 500 / 100)
    roman << 'L' * (self % 100 / 50)
    roman << 'X' * (self % 50 / 10)
    roman << 'V' * (self % 10 / 5)
    roman << 'I' * (self % 5 / 1)
    roman
  end
end
# Get ready for the pure awesome...
# p 7.factorial.to_roman.split(//).shuffle
