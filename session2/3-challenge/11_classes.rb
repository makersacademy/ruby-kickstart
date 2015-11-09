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
  def initialize(num)
    @num = num
    if @num > 99
      @num = 99
    elsif @num < 0
      @num = 0
    end
  end
  def eng_num(x)
    ones_array = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    teens_array = ['', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    tens_array = ['','ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    english_num = []
    ones = x % 10
    tens = (x - ones) / 10
    english_num << tens_array[tens] unless tens == 0 || tens == 1 && ones > 0
    english_num << teens_array[ones] if tens == 1 && ones != 0
    english_num << ones_array[ones] unless tens == 1 || tens >= 1 && ones == 0
    english_num.join("-").capitalize
  end
  def bottles(x)
      if x == 1
        "bottle"
      else
        "bottles"
      end
  end

  def print_song
    while @num > 0
        puts "#{eng_num(@num)} #{bottles(@num)} of beer on the wall,"
        puts "#{eng_num(@num)} #{bottles(@num)} of beer,"
        puts "Take one down, pass it around,"
        puts "#{eng_num(@num - 1)} #{bottles(@num - 1)} of beer on the wall."
        @num -= 1
      end
  end
end

our_song = BeerSong.new(33)
our_song.print_song


=begin
counter = 99
while counter != 3
  counter -= 1
  puts "#{counter} bottles of beer on the wall, #{counter} bottles of beer."
  puts "Take one down and pass it around, #{counter - 1} bottles of beer on the wall."
end
puts "#{counter - 1} bottles of beer on the wall, #{counter - 1} bottles of beer."
puts "Take one down and pass it around, #{counter - 2} bottle of beer on the wall."
puts "#{counter - 2} bottle of beer on the wall, #{counter - 2} bottle of beer."
puts "Take one down and pass it around, no more bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, " + rand(2..99).to_s + " bottles of beer on the wall."
=end
=begin
while x > 0
	if x > 0
		puts x.to_s + ' bottles of beer on the wall, ' + x.to_s + ' bottles of beer'
		puts 'Take one down, pass it around'
	end
	x -= 1
	puts x.to_s + ' bottles of beer on the wall.'
end
=end
