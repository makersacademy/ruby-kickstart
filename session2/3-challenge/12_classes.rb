# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Define a class called Fraction
# This class is used to represent a ratio of two integers
# Include setter methods called numerator and denominator that allow the user to change these values
# Also include a method called to_f that returns the ratio as a float (a number with a decimal point, such as 10.3)
# Also include a method called lowest, which returns a new Fraction, where the numerator and denominator
# are reduced to lowest terms (ie 20/60 becomes 1/3)
# This will require finding the greatest common divisor for the numerator and denominator
# then dividing both by that number.
# I have included a greatest common divisor method for you
# You should also define a method, to_s, that will represent the Fraction as a String
#
# EXAMPLE:
# f = Fraction.new 20, 60
# f.numerator          # => 20
# f.denominator        # => 60
# f.to_s               # => "20/60"
# f.lowest.to_s        # => "1/3"
# f.numerator = 50
# f.denominator = 100
# f.to_s               # => "50/100"
# f.to_f               # => 0.5

<<<<<<< HEAD
#still referred to 12.rb quite a bit

class Fraction
  attr_accessor :numerator, :denominator

  def initialize(numerator, denominator)
    self.numerator, self.denominator = numerator, denominator
  end
  
  def to_s #creates a string out of numerator and denominator in the form of a fraction
    "#{numerator}/#{denominator}"
  end
  
  def to_f #turns numerator/denominator fraction into a float
    numerator / denominator.to_f
  end
  
=======
class Fraction
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
  def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)
  end
<<<<<<< HEAD
  
  def lowest
    divisor = gcd(numerator, denominator)
    Fraction.new(numerator/divisor, denominator/divisor)
  end
end

f = Fraction.new 20, 60
f.numerator
f.denominator
f.to_s
f.lowest.to_s
f.numerator = 50
f.denominator = 100
f.to_s
f.to_f



  
=======
end
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
