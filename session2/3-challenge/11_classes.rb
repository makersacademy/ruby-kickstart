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
  
  def initialize num
    
    if num > 99
      @num = 99
    elsif num < 0
      @num = 0
    else
      @num = num
    end
  end
  
  def num_to_word num
    
    number_to_english = {90 => "ninety",
          80 => "eighty",
          70 => "seventy",
          60 => "sixty",
          50 => "fifty",
          40 => "forty",
          30 => "thirty",
          20 => "twenty",
          19=>"nineteen",
          18=>"eighteen",
          17=>"seventeen", 
          16=>"sixteen",
          15=>"fifteen",
          14=>"fourteen",
          13=>"thirteen",              
          12=>"twelve",
          11 => "eleven",
          10 => "ten",
          9 => "nine",
          8 => "eight",
          7 => "seven",
          6 => "six",
          5 => "five",
          4 => "four",
          3 => "three",
          2 => "two",
          1 => "one",
          0 => "zero"
        }
        
      num_array = num.to_s.split""
      first = num_array[0]
      second = num_array[1]
      
      if num < 21
        word = number_to_english[num]
      elsif second.to_i == 0
        word = number_to_english[first.to_i * 10]
      else
        word = number_to_english[first.to_i * 10] + "-" + number_to_english[second.to_i]
      end
      
    word    
    
  end
  
  def print_song
    
    if @num == 0
      return ""
    end
      
      
    
    loop do
      
      if @num == 1
        bottles = "bottle"
      else
        bottles = "bottles"
      end
      
      puts "#{num_to_word(@num).capitalize} #{bottles} of beer on the wall," 
      puts "#{num_to_word(@num).capitalize} #{bottles} of beer,"
      
      @num -= 1
      
      if @num == 1
        bottles = "bottle"
      else
        bottles = "bottles"
      end
      
      puts  "Take one down, pass it around,"
      puts "#{num_to_word(@num).capitalize} #{bottles} of beer on the wall."
            
       break if @num < 1 
            
      end
    
  end
  
  
end