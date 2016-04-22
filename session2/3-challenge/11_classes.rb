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
  attr_accessor :bottles

  def initialize (bottles)
    bottles = 0 if bottles < 0
    bottles = 99 if bottles > 99
    @bottles = bottles
  end

  def num_words(bottles)

  tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen","eighteen","nineteen"]
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

  words = ''

  tens_place = bottles / 10
  ones_place = bottles % 10

  if tens_place > 0
    if tens_place == 1 && ones_place > 0
      words = "#{teens[ones_place-1]}"
    elsif ones_place == 0
      words = "#{tens[tens_place-1]}"
    elsif tens_place > 1
      words = "#{tens[tens_place-1]}-#{ones[ones_place-1]}"
    end
  end

  if tens_place == 0
      words = "#{ones[ones_place-1]}"
    end
    words
end

  def print_song

    while bottles > 1
     puts "#{num_words(bottles).capitalize} bottles of beer on the wall,"
     puts "#{num_words(bottles).capitalize} bottles of beer,"
     puts "Take one down, pass it around,"
     puts "#{num_words(bottles-1).capitalize} #{bottles-1 == 1 ? "bottle" : "bottles"} of beer on the wall."
     @bottles -= 1
    end

    if bottles == 1
     puts "One bottle of beer on the wall,"
     puts "One bottle of beer,"
     puts "Take one down, pass it around,"
     puts "Zero bottles of beer on the wall."
    end
  end
end

BeerSong.new(99).print_song
