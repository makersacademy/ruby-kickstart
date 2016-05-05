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
require 'numbers_and_words'

class BeerSong
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def print_song
    plural = 's'
    @number = 99 if @number > 99
    @number = 0 if @number < 0

    if @number == 0
      return ""
    else
      while @number > 0
              if @number > 2
                  puts "#{@number.to_words.capitalize} bottles of beer on the wall,\n#{@number.to_words.capitalize} bottles of beer,\nTake one down, pass it around,\n#{(@number - 1).to_words.capitalize} bottles of beer on the wall."
              elsif @number == 2
                  puts "Two bottles of beer on the wall,\nTwo bottles of beer,\nTake one down, pass it around,\nOne bottle of beer on the wall."
              elsif @number == 1
                  puts "One bottle of beer on the wall,\nOne bottle of beer,\nTake one down, pass it around,\nZero bottles of beer on the wall."
              end
          @number -= 1
          end
        end
    end
end
