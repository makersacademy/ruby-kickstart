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
  def initialize(num_bottles=99)
    if num_bottles < 0
      @num_bottles = 0
    elsif num_bottles > 99
      @num_bottles = 99
    else
      @num_bottles = num_bottles
    end
  end

  def num_to_s(num, word=" bottle")
    num == 1 ? ending = word + "" : ending = word + "s"
    split_num = num.to_s.chars.map(&:to_i)
    eleven_to_twenty = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    one_to_nine = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'zero']
    if num < 10 # 1 to 9
      return one_to_nine[num-1] + ending
    elsif num > 10 && num < 20 # 10 to 
      return eleven_to_twenty[num-11] + ending
    else
      return tens[split_num[0]-1] + ending if split_num[1] == 0
      return tens[split_num[0]-1] + "-" + one_to_nine[split_num[1]-1] + ending
    end
  end

  def print_song
    while @num_bottles > 0 
      puts num_to_s(@num_bottles).capitalize + " of beer on the wall,"
      puts num_to_s(@num_bottles).capitalize + " of beer,"
      puts "Take one down, pass it around,"
      @num_bottles -= 1
      puts num_to_s(@num_bottles).capitalize + " of beer on the wall."
    end 
  end
end
