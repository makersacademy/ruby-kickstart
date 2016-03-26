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
    if bottles < 0
      @bottles = 0
    elsif bottles > 99
      @bottles = 99
    else
      @bottles = bottles
    end
  end

  def english_number(value)
    left = value

    ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    num_string = ""

    write = left / 10         # How many tens to write out?
    left = left - write * 10  # Subtract off those tens.

    if write > 0
      if ((write == 1) && (left > 0))
        # Since we can't write "tenty-two" instead of "twelve"
        num_string = num_string + teenagers[left - 1]
        left = 0
      else
        num_string = num_string + tens_place[write - 1]
      end
      if left > 0
        # Proper number formating
        num_string = num_string + '-'
      end
    end

    write = left
    left = 0

    if write > 0
      num_string = num_string + ones_place[write - 1]
    end

    num_string
  end

  def print_song
    while @bottles > 2
      puts "#{english_number(@bottles).capitalize} bottles of beer on the wall,\n#{english_number(@bottles).capitalize} bottles of beer,"
      puts "Take one down, pass it around,\n#{english_number(@bottles - 1).capitalize} bottles of beer on the wall."
      @bottles -=1
    end

    if @bottles == 2
      puts "#{english_number(@bottles).capitalize} bottles of beer on the wall,\n#{english_number(@bottles).capitalize} bottles of beer,"
      puts "Take one down, pass it around,\n#{english_number(@bottles - 1).capitalize} bottle of beer on the wall."
      @bottles -=1
    end

    if @bottles == 1
      puts "#{english_number(@bottles).capitalize} bottle of beer on the wall,\n#{english_number(@bottles).capitalize} bottle of beer,"
      puts "Take one down, pass it around,\nZero bottles of beer on the wall."
      @bottles -=1
    end
  end

end


