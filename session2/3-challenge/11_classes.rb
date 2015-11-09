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

  def initialize(bottles)
    @bottles = bottles
  end

  attr_accessor 'bottles'

  def english_num(number)
    units = ["zero","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen",
      "fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
    tens = ["twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

    unit = number % 10
    ten = (number - unit)/10 - 2  # rebased to match the index of tens array

    if number < 20
      units[number]
    elsif unit == 0
      tens[ten]
    else
      tens[ten]+"-"+units[unit]
    end
  end

  def lastverse
    puts "One bottle of beer on the wall,"
    puts "One bottle of beer,"
    puts "Take one down, pass it around,"
    puts "Zero bottles of beer on the wall."
  end

  def print_song
    if @bottles < 0
      b = 0
    elsif @bottles > 99
      b = 99
    else
      b = @bottles
    end

    if b == 0
      puts ""
    else
      until b == 1 do
        puts english_num(b).capitalize + " bottles of beer on the wall,"
        puts english_num(b).capitalize + " bottles of beer,"
        puts "Take one down, pass it around,"
        b -= 1
        if b == 1
          puts english_num(b).capitalize + " bottle of beer on the wall."
        else
          puts english_num(b).capitalize + " bottles of beer on the wall."
        end
      end
      lastverse
    end
  end

end
