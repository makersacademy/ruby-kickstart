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
  attr_accessor :bottles

  def initialize(bottles)
    if bottles < 0
      bottles = 0
    end
    if bottles > 99
      bottles = 99
    end
    self.bottles = bottles
  end

  def print_song
    bottles.downto 1 do | num |
      print_stanza(num)
    end
  end

  def print_stanza(n)
    if n.zero?
      String.new
    else
      puts "#{translate n} #{bottle n} of beer on the wall,",
           "#{translate n} #{bottle n} of beer,",
           "Take one down, pass it around,",
           "#{translate n-1} #{bottle n-1} of beer on the wall."
    end
  end

  def bottle(n)
    if n == 1
      "bottle"
    else
      "bottles"
    end
  end

def translate(n)
  if n < 0
    return "Please enter a number zero or greater."
  end
  if n > 100
    return "Please enter a number 100 or less."
  end
  if n == 0
    return "Zero"
  end
  num_string =""
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  left = n
  write = left / 100
  left = left - write * 100
  if write > 0
    hundreds = translate(write)
    num_string = num_string + hundreds + " hundred"
    if left > 0
      num_string = num_string + " "
    end
  end
  write = left / 10
  left = left - write * 10
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + "-"
    end
  end
  write = left
  left = 0
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string.capitalize
end
end