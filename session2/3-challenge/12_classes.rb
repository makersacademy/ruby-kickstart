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
	#attr_accessor :num1, :num2
	#not sure about what attr_accesor does or has to do regarding initialize or getter and setter methods  

  def initialize (num1, num2) 
  	@num1 = num1
  	@num2 = num2
  end

  def numerator 
  	@num1
  end

  def denominator
  	@num2
  end
  
  def numerator=(new_num1) #should be attr_reader @num1, be the same??
    @num1 = new_num1
  end

  def denominator=(new_num2) #same as above
  	@num2 = new_num2
  end

  def to_f
  	(@num1 / @num2.to_f).round(1)
  end

  def to_s
  	"#{numerator}/#{denominator}"
  end

  def gcd(a,b)			#I understand what it does but not the reult
    return a if b == 0
    gcd(b, a%b)			#What is this output?
  end

  def lowest
  	divisor = gcd(@num1, @num2)
  	Fraction.new(@num1/divisor, @num2/divisor)
  end
end