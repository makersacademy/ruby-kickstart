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
#
class BeerSong
  attr_reader :bottles

  def initialize(bottles)
    bottles = 0 if bottles < 0
    bottles = 99 if bottles > 99
    @bottles = bottles
  end

  def print_song
    until @bottles == 0
      num = to_english(@bottles)
      less = to_english(@bottles - 1)
      bottle1 = num == "One" ? 'bottle' : 'bottles'
      bottle2 = less == "One" ? 'bottle' : 'bottles'
      puts "#{num} #{bottle1} of beer on the wall,\n"\
        "#{num} #{bottle1} of beer,\n"\
        "Take one down, pass it around,\n"\
        "#{less} #{bottle2} of beer on the wall." 
      @bottles -= 1
    end
  end

  private

  def to_english(num)
    nums = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven',
      'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen',
      'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    big_nums = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy',
      'eighty', 'ninety']
    if num < 20
      english = nums[num]
    else
      tens = num/10
      ones = num%10
      english = big_nums[tens-2]
      english = big_nums[tens-2] + '-' + nums[ones] unless ones == 0
    end
    english.capitalize
  end
end


=begin
wall = BeerSong.new(1000)
puts "new wall with " + wall.bottles.to_s + " bottles"
wall.print_song
=end



