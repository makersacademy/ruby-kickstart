class Fraction
  attr_accessor 'numerator', 'denominator'

 def initialize(num,den)
   @numerator = num
   @denominator = den
 end

 def to_s
   "#{@numerator}/#{@denominator}"
 end

 def lowest
   num = @numerator
   den = @denominator
   @numerator = num / gcd(num,den)
   @denominator = den / gcd(num,den)
 end

 def to_f
   @numerator.to_f/ @denominator
 end

 def gcd(a,b)
   return a if b == 0
   gcd(b, a%b)
 end
end
