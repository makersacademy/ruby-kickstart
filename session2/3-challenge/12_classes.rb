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

# new class object, that takes two Integers
# first Integer is called numerator and the second is denominator
# inititalize the object with these two names, setting the instance variables that can be accessed whenever in the object scope
# allow the Integers to be reset 
# create a method called to_f - returns the ratio as a float = numberator / denominator to_f
# create a method called lowest - using the gcd to divide both numbers by
# create a method called to_s which returns the fraction as a string
class Fraction

  attr_accessor :numerator, :denominator

	def initialize(numerator, denominator)
		@numerator = numerator
		@denominator = denominator
	end

    def to_f
    	@numerator / @denominator.to_f
	end


    def lowest
    divisor = gcd(@numerator, @denominator)
    Fraction.new(numerator/divisor, denominator/divisor)
	end

	def to_s
		"#{@numerator}/#{@denominator}"
	end


#this returns a number that you divide both numbers by to get a new fraction
  def gcd(a, b)
  	#if this line is true, it just returns a
    return a if b == 0
    #if the above is not true, it runs the method again, with b as the first num
    #and the remainder of a/b as the second number
    gcd(b, a%b)
    
  end

end
