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

def english_number(number)
  if number < 0
    return "Please enter a number that is not negative"
  end
  if number == 0
    return "zero"
  end
  num_string = ""

  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teen_place = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

  left = number
  write = left/100
  left = left - write*100

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + "hundred"
    if left >0
      num_string = num_string + ""
    end
  end

write = left/10
left = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teen_place[left - 1]
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end
    if left > 0
      num_string = num_string + "-"
    end
  end
write = left
left = 0

  if write > 0
    num_string = num_string + ones_place[write - 1]
  end
  return num_string.capitalize
end


def initialize(bottle_number)
  @bottle_number_init = bottle_number
  if bottle_number >= 99
    @bottle_number_init = 99
  elsif bottle_number <= 0
    @bottle_number_init = 0
  end
end

def print_song
  bottle_number = @bottle_number_init
  while bottle_number >=1
    bottle_number_word = english_number(bottle_number)
    if bottle_number >=3
      puts bottle_number_word + " bottles of beer on the wall,\n" + bottle_number_word + " bottles of beer,"
      puts "Take one down, pass it around,\n" + english_number(bottle_number-1) + " bottles of beer on the wall."
    elsif bottle_number ==2
      puts bottle_number_word + " bottles of beer on the wall,\n" + bottle_number_word + " bottles of beer,"
      puts "Take one down, pass it around,\n" + english_number(bottle_number-1) + " bottle of beer on the wall."
    elsif bottle_number ==1
      puts bottle_number_word + " bottle of beer on the wall,\n" + bottle_number_word + " bottle of beer,"
      puts "Take one down, pass it around,\nZero bottles of beer on the wall."
    end
    bottle_number -=1
  end
  #puts "No more bottles of beer on the wall, no more bottles of beer."
  #puts "Go to the store and buy some more, 99 bottles of beer on the wall..."
end

end

BeerSong.new 99