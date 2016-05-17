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

  def number_to_word(n)
    ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens = ["Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
    if n == 0
      print "Zero"
    elsif n < 20
      print ones[n - 1].capitalize
    elsif n > 19
      if n % 10 == 0
        print tens[n/10 - 2]
      else
        print tens[n/10 - 2] + "-" + ones[n % 10 - 1]
      end
    end
  end

  def bottles(bottle)
    if bottle == 1
      "bottle"
    else
      "bottles"
    end
  end

  def print_song
   while @number > 0
     puts "#{number_to_word(@number)} #{bottles(@number)} of beer on the wall,"
     puts "#{number_to_word(@number)} #{bottles(@number)} of beer,"
     puts "Take one down, pass it around,"
     @number -= 1
     puts "#{number_to_word(@number)} #{bottles(@number)} of beer on the wall."
   end
  end
end

















