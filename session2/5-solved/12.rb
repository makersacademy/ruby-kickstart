class Fraction
  attr_accessor :numerator
  attr_accessor :denominator
  
  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end
  
  def to_f
    @numerator.to_f / @denominator.to_f
  end
  
  def lowest
    Rational(@numerator, @denominator)
  end
  
  def to_s
    "#{numerator}/#{denominator}"
  end
  
  def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)
  end
end