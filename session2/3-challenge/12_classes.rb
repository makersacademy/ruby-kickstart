class Fraction

attr_accessor :numerator, :denominator

def initialize(numerator,denominator)
	@numerator=numerator
	@denominator=denominator
	@gcd=gcd(@denominator,@numerator)
end

def to_f
	(@numerator.to_f)/(@denominator.to_f)
end

def to_s
	"#{@numerator}/#{@denominator}"
end

def lowest
	Fraction.new(@numerator/@gcd, @denominator/@gcd)
end

def gcd(a,b)
    return a.gcd(b)
end

end

