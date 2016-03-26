#ok, I'm going to admit to needing to use the solution to get this!!! It's not far off working .......

class Fraction
  attr_accessor :numerator, :denominator

def initialize(num,den)
    @numerator = num
    @denominator = den
end

def to_s
    "#{@numerator}/#{@denominator}"
end

def to_f
    numerator / denominator.to_f
    @numerator.to_f/ @denominator
  end

def lowest
    divisor = gcd(num, den)
    Fraction.new(num/divisor, den/divisor)
end

def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)
  end
end

