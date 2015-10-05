# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

  attr_accessor "bottles"

  def initialize (bottles)
    if bottles < 0
      @bottles = 0 
    elsif bottles > 99
   	  @bottles = 99
    else
      @bottles = bottles
    end
  end

  def print_song
    @bottles.downto(1) {|i|  print_lines(i)}
  end

  def print_lines(n)
    String.new if n == 0      

    puts "#{ntow(n)} #{sornos(n)} of beer on the wall,",
         "#{ntow(n)} #{sornos(n)} of beer,",
         "Take one down, pass it around,",
         "#{ntow(n-1)} #{sornos(n-1)} of beer on the wall."
  end

  def sornos(n)
    n == 1 ? "bottle" : "bottles"
  end

  def ntow(n)
    uptonineteen = ["zero", "one", "two", "three", "four", "five", "six","seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens  = ["zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

    if n < 20
      uptonineteen[n].capitalize
    elsif  n%10 == 0
      tens[n/10].capitalize
    else
      "#{ntow(n/10*10)}-#{ntow(n%10)}".capitalize
    end
  end

end
