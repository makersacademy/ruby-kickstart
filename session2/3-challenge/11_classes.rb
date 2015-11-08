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

class Integer
    def proper_num
    low_nums = {1 => "One", 2 => "Two", 3 => "Three", 4 => "Four", 5 => "Five", 6 => "Six", 7 => "Seven", 8 => "Eight", 9 => "Nine",
  10 => "Ten", 11 => "Eleven", 12 => "Twelve", 13 => "Thirteen", 14 => "Fourteen", 15 => "Fifteen", 16 => "Sixteen", 
  17 => "Seventeen", 18 => "Eighteen", 19 => "Nineteen"}
    tens = {20 => "Twenty", 30 => "Thirty", 40 => "Forty", 50 => "Fifty", 60 => "Sixty", 70 => "Seventy", 80 => "Eighty", 90 => "Ninety"}
    
      if low_nums.has_key?(self)
        low_nums[self]
      elsif tens.has_key?(self)
        tens[self]
      elsif (20..99).include? self
        a = (self / 10) * 10 #tens
        b = self % 10 #units
        tens[a] + "-" + low_nums[b].downcase
      else
        "I don't deal with numbers like you"
      end
    end
end

class BeerSong
  def initialize(bottle_num)
    if bottle_num > 99
      @bottle_num = 99
    elsif bottle_num < 0
      @bottle_num = 0
    else
      @bottle_num = bottle_num
    end
  end
  
  def print_song
    sing_a_long(@bottle_num) 
  end 
  
  def sing_a_long(arg)
    if arg == 0
      return ""
    elsif arg == 1
      print "One bottle of beer on the wall,\nOne bottle of beer,\nTake one down, pass it around,\nZero bottles of beer on the wall." 
    elsif arg == 2
      puts "Two bottles of beer on the wall,\nTwo bottles of beer,\nTake one down, pass it around,\nOne bottle of beer on the wall."
    else    
      puts "#{arg.proper_num} bottles of beer on the wall,\n#{arg.proper_num} bottles of beer,\nTake one down, pass it around,\n#{(arg-1).proper_num} bottles of beer on the wall."
    end
    
    sing_a_long(arg - 1)
  end
end