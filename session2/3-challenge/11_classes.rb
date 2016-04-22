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
def english_number number
  left = number
  written = ""
  tens = ["Ten","Twenty","Thirty","Forty","Fifty","Sixty","Seventy","Eighty","Ninety"]
  teens =["Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"]
  ones = ["Zero","One","Two",'Three',"Four","Five","Six","Seven","Eight","Nine"]
  write = left/10
  left = left - write * 10
  if write >0
    if write ==1 and left > 0
      written += teens[left-1].to_s
      left = 0
    elsif write >=1
      written += tens[write-1].to_s
    end
    if left > 0
      written += "-" + ones[left].downcase
    end
  end
  if write == 0 and left >= 0
      written += ones[left].to_s
  end
  return written
end

class BeerSong
  def initialize(bottles)
    if bottles < 0
      @bottles = 0
    elsif bottles >99
      @bottles = 99
    else
      @bottles = bottles
    end


    def print_song
      while @bottles >0
        if @bottles == 2
          puts "#{english_number(@bottles)} bottles of beer on the wall,\n#{english_number(@bottles)} bottles of beer,\nTake one down, pass it around,\n#{english_number(@bottles-1)} bottle of beer on the wall."
        elsif @bottles ==1
          puts "#{english_number(@bottles)} bottle of beer on the wall,\n#{english_number(@bottles)} bottle of beer,\nTake one down, pass it around,\n#{english_number(@bottles-1)} bottles of beer on the wall."
        else
          puts "#{english_number(@bottles)} bottles of beer on the wall,\n#{english_number(@bottles)} bottles of beer,\nTake one down, pass it around,\n#{english_number(@bottles-1)} bottles of beer on the wall."
        end
        @bottles-= 1
      end


    end

  end
end
