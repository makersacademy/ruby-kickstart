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
    number = 99 if number > 99
    number = 0 if number < 0
    @number = number
  end

  def english_number(number)

    if number == 0
      return "Zero"
    end

    eng_no = ""

    singlePlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine",]
    teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tenPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

    if (number == 10) or (number >= 20)
      tens = number / 10
      number = number - (tens * 10)
      eng_no = eng_no + tenPlace[tens - 1].to_s
      if number > 0
        eng_no = eng_no + "-"
      end
    end

    if (number > 10) && (number < 20)
      teens = number - 10
      number = number - (teens + 10)
      eng_no = eng_no + teenagers[teens - 1]
    end


    if number > 0
      eng_no = eng_no + singlePlace[number - 1].to_s
    end

    return eng_no
  end

end



def print_song(x)
  if x > 99
    x = 99
  end

  while x > 1
    num = english_number(x)
    puts "#{num} bottles of beer on the wall,"
    puts "#{num} bottles of beer,"
    puts "Take one down, pass it around,"
    num = english_number(x-1)
    puts "#{num} bottles of beer on the wall."
  end



  if x < 0 or x ==0
    puts "One bottle of beer on the wall,"
    puts "One bottle of beer,"
    puts "Take one down, pass it around,"
    puts "Zero bottles of beer on the wall."
  end

  english_number(x)



  else


# This is where I got in 45 minutes. Obviously it's not finished but hopefully I'm on the right track
