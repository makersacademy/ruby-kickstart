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
    if bottles > 99
      @bottles = 99
    elsif bottles < 0
      @bottles = 0
    else
    @bottles = bottles
    end
  end

  def worded_numbers(bottles)
    if bottles == 0
      return "Zero"
    end
    array = []
    ones = ['one','two','three','four','five','six','seven','eight','nine']
    tens = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
    teens = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

    remaining = bottles
    write = bottles / 10
    remaining = remaining - write*10

    if write > 0
      if ((write == 1) && (remaining > 0))
        array << teens[remaining - 1]
        remaining = 0
      else
        array << tens[write - 1]
      end

      if remaining > 0
        array << "-"
      end
    end

    write = remaining
    if write > 0
      array << ones[write - 1]
    end
    array.join
  end

  def print_song
    @bottles.downto(1) do |x|
      if x == 1
        print "#{worded_numbers(x).capitalize} bottle of beer on the wall,
#{worded_numbers(x).capitalize} bottle of beer,
Take one down, pass it around,
#{worded_numbers(x-1).capitalize} bottles of beer on the wall.\n"
      elsif x == 2
        print "#{worded_numbers(x).capitalize} bottles of beer on the wall,
#{worded_numbers(x).capitalize} bottles of beer,
Take one down, pass it around,
#{worded_numbers(x-1).capitalize} bottle of beer on the wall.\n"
      else
      print "#{worded_numbers(x).capitalize} bottles of beer on the wall,
#{worded_numbers(x).capitalize} bottles of beer,
Take one down, pass it around,
#{worded_numbers(x-1).capitalize} bottles of beer on the wall.\n"
      end
    end
  end

end
