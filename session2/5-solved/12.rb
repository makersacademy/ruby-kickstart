class Fraction
  attr_accessor :numerator, :denominator

  def initialize(numerator, denominator)
    self.numerator, self.denominator = numerator, denominator
  end

  def to_s
    "#{numerator}/#{denominator}"
  end

  def to_f
    numerator / denominator.to_f
  end

  def gcd(a, b)
    return a if b == 0
    gcd b, (a % b)
  end

 def lowest

    a = numerator
    b = denominator
    c = gcd(a,b)

    to_give = Fraction.new a/c, b/c

  end

#  def lowest
#    divisor = gcd(numerator, denominator)
#    Fraction.new(numerator/divisor, denominator/divisor)
#  end
end

f = Fraction.new 20, 60
puts f.numerator
puts f.denominator
puts f.to_f
puts f.to_s
puts f.lowest.to_s
