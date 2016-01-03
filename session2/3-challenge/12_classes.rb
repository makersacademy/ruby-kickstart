# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# 1. Define a class called Fraction

# 2. This class is used to represent a ratio of two integers

# 3. Include setter methods called numerator and denominator that allow the user to change these values

# 4. Also include a method called to_f that returns the ratio as a float (a number with a decimal point, such as 10.3)

# 5. Also include a method called lowest, which returns a new Fraction, where the numerator and denominator
# are reduced to lowest terms (ie 20/60 becomes 1/3)
# This will require finding the greatest common divisor for the numerator and denominator
# then dividing both by that number.
# I have included a greatest common divisor method for you
# You should also define a method, to_s, that will represent the Fraction as a String
#
# 1. Definiere eine Klasse namens Fraction.

# 2. Diese Klasse wird dazu benutzt ein Verhältnis von zwei Integer-Zahlen darzu-
# stellen.

# 3. Verwende "setter"-Methoden numerator und denominator, die es dem Nutzer
# erlauben diese Werte zu verändern.

# 4. Verwende auch eine Klasse to_f, die das Verhältnis als float zurückgibt (eine Zahl mit Dezimalpunkt)

# 5. Verwende auch eine Klasse namens lowest, welche einen neuen Bruch zurückgibt,
# bei dem numerator und denominator auf ihre niedrigsten Terme reduziert werden.
# Dazu muss der grösste gemeinsame Teiler gefunden werden und jeweils nominator
# und denominator durch diesen geteilt werden.
# Ich habe eine ggT-Methode für Euch bereitgestellt.

# 6. Ihr solltet auch eine Methode, to_s, definieren die den Bruch einer
# Zeichenkette darstellt.
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

  def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)
  end

  def lowest
    divisor = gcd(numerator, denominator)
    Fraction.new(numerator/divisor, denominator/divisor)
  end
end
