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
    bottles = 99 if bottles > 99
    bottles = 0 if bottles < 0
    @bottles = bottles
  end

  def print_song
    (0...@bottles).each do |i|
      this_bottles = @bottles - i
      next_bottles = @bottles - (i + 1)
      this_plural = plural(this_bottles)
      next_plural = plural(next_bottles)
      puts "#{english(this_bottles).capitalize} #{this_plural} of beer on the wall,"
      puts "#{english(this_bottles).capitalize} #{this_plural} of beer,"
      puts "Take one down, pass it around,"
      puts "#{english(next_bottles).capitalize} #{next_plural} of beer on the wall."
    end
  end

  def english(n)
    if n == 0
      return "zero"
    end

    eng_num = ""

    singles = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    remaining = n

    ten_push = remaining / 10
    remaining = remaining - ten_push * 10

    if ten_push > 0
      if ten_push == 1 && remaining != 0
        eng_num = teens[remaining - 1]
        remaining = 0
      elsif remaining != 0
        eng_num = tens[ten_push - 1] + "-"
      else
        eng_num = tens[ten_push -1]
      end
    end

    if remaining != 0
      eng_num = eng_num + singles[remaining - 1]
    end

    eng_num
  end

  def plural(n)
    n == 1 ? "bottle" : "bottles"
  end

end
