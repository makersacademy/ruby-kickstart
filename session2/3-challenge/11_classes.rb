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

  def initialize bottle
    if bottle < 0
      @bottle = 0
    elsif bottle > 99
      @bottle = 99
    else @bottle = bottle
    end
  end

  def englishNumber number
    if number == 0
      return "zero"
    end
    numString = ""
    onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    tensPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

    left = number
    write = left/10
    left = left - write*10

    if write > 0
      if ( (write == 1) and (left > 0) )
      # consider the "teenager" numbers first
        numString = numString + teenagers[left-1]
        # as index numbers start at zero and values start at "eleven"
        left = 0
        # make left 0 as we have taken care of the last digit already
      else
        numString = numString + tensPlace[write-1]
      end

      if left > 0
        numString = numString + "-"
        # to write "sixty-four"
      end
    end

    write = left
    left = 0

    if write > 0
      numString = numString + onesPlace[write-1]
    end

    numString
  end

  def print_song
    var = @bottle
    while var > 2 do
  		lyrics_number = englishNumber var
  		one_less = englishNumber (var-1)
    		puts "#{lyrics_number.capitalize} bottles of beer on the wall,"
        puts "#{lyrics_number.capitalize} bottles of beer,"
    		puts "Take one down, pass it around,"
        puts "#{one_less.capitalize} bottles of beer on the wall."
    		var -= 1
    end
    if var == 2
        puts "Two bottles of beer on the wall,"
        puts "Two bottles of beer,"
        puts "Take one down, pass it around,"
        puts "One bottle of beer on the wall."
        puts "One bottle of beer on the wall,"
        puts "One bottle of beer,"
        puts "Take one down, pass it around,"
        puts "Zero bottles of beer on the wall."
    end
    if var == 1
        puts "One bottle of beer on the wall,"
        puts "One bottle of beer,"
        puts "Take one down, pass it around,"
        puts "Zero bottles of beer on the wall."
    end
  end
end
