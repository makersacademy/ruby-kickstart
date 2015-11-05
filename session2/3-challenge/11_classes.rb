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
  attr_accessor :starting_bottles
  def initialize(starting_bottles)
    if starting_bottles < 0
      @starting_bottles = 0
    elsif starting_bottles > 99
      @starting_bottles = 99
    else
      @starting_bottles = starting_bottles
    end
  end

  def print_song
    @starting_bottles.downto(1) { |i| print_stanza(i) }
  end

  def bottle_english(n)
    tens_array = ['','ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teens_array = ['', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    ones_array = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    english = []
    ones = n % 10
    tens = (n - ones) / 10
    english << tens_array[tens] unless tens == 0 || tens == 1 && ones > 0
    english << teens_array[ones] if tens == 1 && ones != 0
    english << ones_array[ones] unless tens == 1 || tens >= 1 && ones == 0
    english.join("-").capitalize
  end

  def bottle_noun(n)
    n == 1 ? "bottle" : "bottles"
  end

  def print_stanza(n)
    puts "#{bottle_english(n)} #{bottle_noun(n)} of beer on the wall,\n#{bottle_english(n)} #{bottle_noun(n)} of beer,\nTake one down, pass it around,"
    puts "#{bottle_english(n-1)} #{bottle_noun(n-1)} of beer on the wall."
  end
end
