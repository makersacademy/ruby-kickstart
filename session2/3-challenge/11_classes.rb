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
  attr_accessor :beers

  def initialize(beers)
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    @beers = beers
  end

def translate(n)
  singles = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  tens = ["zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  if n == 0
    return "Zero"
  elsif n < 20                      # less than 20 bottles
    return singles[n].capitalize
  elsif n >= 20 && n%10 == 0        #  20, 30, 40, 50, 60, 70, 80, 90
    return tens[n/10].capitalize
  else 
    return (tens[n/10] + "-" + singles[n%10]).capitalize    # 21..29, 31..39 etc
  end
end

  def bottle(n)   # plural of bottles for song
    if n == 1 
       'bottle' 
    else 
       'bottles' 
    end
  end

  def song_words(n)
    if n == 0 
      puts "Zero bottles of been on the wall."
    else
      puts "#{translate(n)} #{bottle(n)} of beer on the wall,"
      puts "#{translate(n)} #{bottle(n)} of beer,"
      puts "Take one down, pass it around,"
      puts "#{translate(n - 1)} #{bottle(n - 1)} of beer on the wall."
   end
  end

  def print_song
    until @beers == 0
      song_words(@beers)
      @beers -= 1
    end
  end

end