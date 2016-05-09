# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!.

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
# f = Fraction.new 20, 60             => DONE
# f.numerator          # => 20        => DONE
# f.denominator        # => 60        => DONE
# f.to_s               # => "20/60"   => DONE
# f.lowest.to_s        # => "1/3"     =>
# f.numerator = 50                    => DONE
# f.denominator = 100                 => DONE
# f.to_s               # => "50/100"  => DONE
# f.to_f               # => 0.5       => DONE

class Fraction

  attr_accessor :numerator, :denominator

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

  def to_s
    "#{@numerator}/#{@denominator}"
  end

  def to_f
    @numerator / @denominator.to_f
  end

  def gcd(a, b)
# Creates new gcd method that takes two numbers.
# gcd is a ruby method that returns the greatest
# common divsor that is a whole number.
    return a if b == 0
# Returns a if b is equal to 0, otherwise gcd
# will fail because it will try dividing a by 0
# which equals infinity, e.g. 1/0 = infinity
    gcd(b, a%b)
  end

  def lowest
    divisor = gcd(@numerator, @denominator)

    Fraction.new (@numerator/divisor), (@denominator/divisor)
  end
end

