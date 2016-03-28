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

class Fraction
  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

attr_accessor 'numerator'
attr_accessor 'denominator'

def to_f
  @numerator.to_f / @denominator.to_f
end

def to_s
  @numerator.to_s + "/" + @denominator.to_s
end

def gcd(a,b)
  return a if b == 0
  gcd(b, a%b)
end

def lowest
  divider = gcd(@numerator, @denominator)
  Fraction.new(@numerator / divider, @denominator / divider)
end

end

# this was all fairly straightforward, except I was unsure how rake was expecting
# the value created by .lowest to be returned. I tried using "return". Also,
# I went down a rabbit hold trying to convert the results to a string, as the
# instructions seem to suggest this is required. Finally, I read the conversation
# beneath @JackRim1's issue regarding this problem on git hub. Glad to see I had everything
# down except this small issue, and that the rest of our approach aligned.
