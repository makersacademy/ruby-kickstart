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
  def initialize(number)
    if number < 0
      @number = 0
    elsif number > 99
      @number = 99
    else
      @number = number
    end
  end

  attr_accessor :number

  SECOND_DIGIT_HASH = {
    2 => "twenty",
    3 => "thirty",
    4 => "forty",
    5 => "fifty",
    6 => "sixty",
    7 => "seventy",
    8 => "eighty",
    9 => "ninety"
  }

  FIRST_DIGIT_HASH = {
    0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
  }

  #take the @number and transform it into capitalized English
  #0-9 correspond to zero to nine
  def number_parse
    if number < 20
      return FIRST_DIGIT_HASH[number]
    elsif number % 10 == 0
      return SECOND_DIGIT_HASH[number/10]
    else
      return "#{SECOND_DIGIT_HASH[number/10]}-#{FIRST_DIGIT_HASH[number- 10 * (number / 10)]}"
    end
  end

  def print_song
    return if self.number == 0
    while self.number > 0
        puts "#{number_parse.capitalize} #{self.number == 1? "bottle" : "bottles"} of beer on the wall,"
        puts "#{number_parse.capitalize} #{self.number == 1? "bottle" : "bottles"} of beer,"
        puts "Take one down, pass it around,"
        self.number -= 1
        puts "#{number_parse.capitalize} #{self.number == 1? "bottle" : "bottles"} of beer on the wall."
    end
  end
end
