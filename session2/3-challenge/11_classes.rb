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

class BeerSong                # Creates a new class called BeerSong
  attr_accessor :beers        # This allows you to read and assign the instance variable - beers

  def initialize(beers)       # This initialises the BeerSong class with the parameter beers
    beers = 0  if beers < 0   # If the parameter is set below 0, beers will be set to 0 instead
    beers = 99 if beers > 99  # If the parameter is set about 99, beers will be set to 99 instead
    self.beers = beers        # Sets the class variable beers to be equal to beers
  end

  def print_song              # Defines print_song method
    beers.downto 1 do |i|     # From beers variable (eg.99) down to 1, do the following
      print_stanza i          # Call the method print_stanza
    end
  end

  def print_stanza(n)       # Defines printing of the song method, with 1 parameter
    if n.zero?              # If n = 0, create a new String class
      String.new
    else                    # Puts song lyrics using string interpolation and methods below
      puts "#{translate n} #{bottle n} of beer on the wall,"        ,
           "#{translate n} #{bottle n} of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "#{translate n - 1} #{bottle n-1} of beer on the wall."
    end
  end

  # returns "bottle" or "bottles"
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end

  # translates number to English
  def translate(n)
    if 0 <= n && n <= 19    # If n is between 0-19, use this array for n
      ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"][n]
    elsif n % 10 == 0       # Use this array for n/10
      ["zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"][n/10]
    else                    # Split the number into tens and ones and run the methods again
      "#{translate n/10*10}-#{translate n%10}".downcase
    end.capitalize
  end
end
