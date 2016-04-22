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
    @bottles = 0 if bottles < 0
    bottles > 99 ? @bottles = 99 : @bottles = bottles
    @writnum = ""
    @plural = "bottles"
  end

def print_song

while @bottles > 0
self.get_num
puts "#{@writnum} #{@plural} of beer on the wall,\n#{@writnum} #{@plural} of beer,\nTake one down, pass it around,"
@bottles -= 1
self.get_num
puts "#{@writnum} #{@plural} of beer on the wall."
end
end

def get_num
splitnum = []
@bottles.to_s.split("").each{|x| splitnum << x.to_i}
tens = ["Twenty","Thirty","Forty","Fifty","Sixty","Seventy","Eighty","Ninety"]
ones = ["Zero","one","two","three","four","five","six","seven","eight","nine"]
teens = ["Ten","Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"]
  case @bottles
  when 20..99
    splitnum.each_slice(2){|a,b|
      b == 0 ? (@writnum = "#{tens[a-2]}") : (@writnum = "#{tens[a-2]}-#{ones[b]}")
    }
  when 10..19
    splitnum.each_slice(2){|a,b|
      @writnum = "#{teens[b]}"
    }
  when 0..9
    @writnum = "#{ones[splitnum[0]].capitalize}"
    @bottles == 1 ? (@plural = "bottle") : (@plural = "bottles")
  end
end

end

#song = BeerSong.new(11)
#song.print_song
