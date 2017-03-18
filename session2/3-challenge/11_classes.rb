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
attr_accessor :num_bots

  def initialize(num_bots)
    if num_bots < 0
      @num_bots = 0
    elsif num_bots > 99
      @num_bots = 99
    else
      @num_bots = num_bots
    end
  end

  def print_song
    if num_bots == 0
      puts ""
    else
      num_bots.downto(1) do |i|
      num_words = number_convert(i)
      num_words_one_less = number_convert(i-1)
      puts "#{num_words} #{i == 1 ? "bottle" : "bottles"} of beer on the wall,"
      puts "#{num_words} #{i == 1 ? "bottle" : "bottles"} of beer,"
      puts "Take one down, pass it around,"
      puts "#{num_words_one_less} #{i == 2 ? "bottle" : "bottles"} of beer on the wall."
      end
    end
  end

  def number_convert(number)

    if (10..19).include?(number)
      case number
      when 10 then return "Ten"
      when 11 then return "Eleven"
      when 12 then return "Twelve"
      when 13 then return "Thirteen"
      when 14 then return "Fourteen"
      when 15 then return "Fifteen"
      when 16 then return "Sixteen"
      when 17 then return "Seventeen"
      when 18 then return "Eighteen"
      when 19 then return "Nineteen"
      end

    elsif number == 0
      return "Zero"

    else
      first = number / 10
      case first
      when 9 then tens = "ninety"
      when 8 then tens = "eighty"
      when 7 then tens = "seventy"
      when 6 then tens = "sixty"
      when 5 then tens = "fifty"
      when 4 then tens = "forty"
      when 3 then tens = "thirty"
      when 2 then tens = "twenty"
      when 0 then tens = ""
      end

      second = number - first * 10
      case second
      when 9 then units = "nine"
      when 8 then units = "eight"
      when 7 then units = "seven"
      when 6 then units = "six"
      when 5 then units = "five"
      when 4 then units = "four"
      when 3 then units = "three"
      when 2 then units = "two"
      when 1 then units = "one"
      when 0 then units = ""
      end

      tens << "-" if number % 10 != 0 && number > 10
      "#{tens}#{units}".capitalize
    end
  end

end
