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
require 'to_words'

class BeerSong

  def initialize(number)
    @number = number
  end

  def bottle(count)
    count == 1 ? 'bottle' : 'bottles'
  end

  def print_song
    count = @number
    return "Zero bottles of beer on the wall" if count <= 0
    count = 99 if count > 99
 
    loop do
      puts  "#{count.to_words.capitalize.split.join('-')} #{bottle(count)} of beer on the wall,"        ,
            "#{count.to_words.capitalize.split.join('-')} #{bottle(count)} of beer,"                    ,
            "Take one down, pass it around,"                                            ,
            "#{(count - 1).to_words.capitalize.split.join('-')} #{bottle(count - 1)} of beer on the wall."
      count -= 1
      break if count == 0
    end
  end
end

# BeerSong.new().print_song
