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
  attr_accessor 'bottles'
  def initialize(bottles)
    @bottles = bottles
    if @bottles < 1
      bottles = 0
      else @bottles > 99
        bottles = 99
end
end

def eng_num number
  num = ''
  if number == 0
    num = 'zero'
  else
    ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    first = number
    second = first / 10
    first = first - second * 10
    if second > 0
      if ((second == 1) and (first > 0))
        num = num + teens[first-1]
        first = 0
      else
        num = num + tens[second - 1]
      end

      if first > 0
        num = num + '-'
        end
        end
        second = first
        first = 0
        if second > 0
        num = num + ones[second-1]
          end
        end
        num
        end
def bottle_grammar(bottles)
if bottles == 1
  return "bottle"
else
   "bottles"
end
end

def song(bottles)
  if bottles == 0
    String.new
  elsif bottles > 99
    String.new
  else
    puts "#{eng_num(bottles)} #{bottle_grammar(bottles)} of beer on the wall,".capitalize
    puts "#{eng_num(bottles)} #{bottle_grammar(bottles)} of beer,".capitalize
    puts "Take one down, pass it around,"
    puts "#{eng_num(bottles - 1)} #{bottle_grammar(bottles - 1)} of beer on the wall.".capitalize
  end
end

def print_song
  @bottles.downto(1) {|x| song(x)}
end
end






