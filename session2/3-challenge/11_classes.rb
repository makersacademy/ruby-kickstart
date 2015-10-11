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

require_relative './english_number'

class BeerSong
  def initialize(number_of_bottles)
    @number_of_bottles = number_of_bottles > 99 ? 99 : number_of_bottles
    @number_of_bottles = 0 if number_of_bottles < 0
  end

  def print_song
    @number_of_bottles.downto(1).each do |n|
      puts "#{english_number(n).capitalize} #{bottle(n)} of beer on the wall,\n" +
      "#{english_number(n).capitalize} #{bottle(n)} of beer,\n" +
      "Take one down, pass it around,\n" +
      "#{english_number(n - 1).capitalize} #{bottle(n-1)} of beer on the wall."
    end
  end

  private
  def bottle(n)
    n == 1 ? 'bottle' : 'bottles'
  end
end
# ~> -:24:in `require_relative': cannot infer basepath (LoadError)
# ~>  from -:24:in `<main>'
