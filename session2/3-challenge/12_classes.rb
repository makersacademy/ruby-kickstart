# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Define a class called Fraction
# This class is used to represent a ratio of two integers
# Include setter methods called numerator and denominator that allow the user to change
# these values.
# Also include a method called to_f that returns the ratio as a float (a number with a
# decimal point, such as 10.3).
# Also include a method called lowest, which returns a new Fraction, where the numerator
# and denominator are reduced to lowest terms (ie 20/60 becomes 1/3).
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

	def initialize (a,b)

		@numerator = a

		@denominator = b

	end

	attr_accessor "numerator","denominator"

	def to_s (n=@numerator,d=@denominator)

    # puts "to_s method running"

		"#{n.to_s}/#{d.to_s}"

    # puts "to_s methond complete"

	end

  def to_f (n=@numerator,d=@denominator)

    n.to_f / d.to_f

  end

  def gcd(a,b)

    return a if b == 0

    self.gcd(b, a%b)

  end

  def lowest

    # puts "lowest method is running"

    # puts "Calculating gcd"

  	cgcd = gcd @numerator, @denominator

    # puts "gcd calculation complete"

    # puts cgcd

    lnumerator = @numerator / cgcd

    ldenominator = @denominator / cgcd

    # puts "lowest method is complete"
    
    Fraction.new lnumerator, ldenominator
        
  end

end

# f = Fraction.new 20, 60
# f.numerator          # => 20
# f.denominator        # => 60
# f.to_f               # => 0.3
# f.to_s               # => "20/60"
# f.lowest.to_s        # => "1/3"
# f.lowest.to_f        # => 0.3
# f.numerator = 50
# f.denominator = 100
# f.to_s               # => "50/100"
# f.to_f               # => 0.5