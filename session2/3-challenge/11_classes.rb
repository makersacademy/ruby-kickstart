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
  
  def initialize(beers)
    @beers = beers
    @beers = 0 if @beers < 0
    @beers = 99 if @beers > 99
  end
  
  def number(num)
    num_array = num.to_s.split("")
    i =0
    num_array.each {|x| num_array[i] = x.to_i; i += 1}
    num_word = ""

    
    if num_array.length == 2
      
      if num_array[0] == 1 
        num_word = "ten" if num == 10
        num_word = "eleven" if num == 11
        num_word = "twelve" if num == 12
        num_word = "thirteen" if num == 13
        num_word = "fourteen" if num == 14
        num_word = "fifteen" if num == 15
        num_word = "sixteen" if num == 16
        num_word = "seventeen" if num == 17
        num_word = "eighteen" if num == 18
        num_word = "nineteen" if num == 19
      end
      
      num_word = "Twenty" if num_array[0] == 2
      num_word = "Thirty" if num_array[0] == 3
      num_word = "Forty" if num_array[0] == 4
      num_word = "Fifty" if num_array[0] == 5
      num_word = "Sixty" if num_array[0] == 6
      num_word = "Seventy" if num_array[0] == 7
      num_word = "Eighty" if num_array[0] == 8
      num_word = "Ninety" if num_array[0] == 9
      
      num_word = num_word + "-" if num_array[1] != 0 && num_array[0] != 1
        
      if num_array[0] != 1 && num_array[1] != 0
        num_array[0] = nil
        num_array.compact!
      end
      
    end
    
    if num_array.length == 1
      num_word = "zero" if num_array[0] == 0
      num_word = num_word + "one" if num_array[0] == 1
      num_word = num_word + "two" if num_array[0] == 2
      num_word = num_word + "three" if num_array[0] == 3
      num_word = num_word + "four" if num_array[0] == 4
      num_word = num_word + "five" if num_array[0] == 5
      num_word = num_word + "six" if num_array[0] == 6
      num_word = num_word + "seven" if num_array[0] == 7
      num_word = num_word + "eight" if num_array[0] == 8
      num_word = num_word + "nine" if num_array[0] == 9
    end
    
    
    num_word
  end
  
  def print_song
    while @beers > 0
      
      input_number = number(@beers)
      puts "#{input_number.capitalize} bottles of beer on the wall," if @beers != 1
      puts "#{input_number.capitalize} bottle of beer on the wall," if @beers == 1
      puts "#{input_number.capitalize} bottles of beer," if @beers != 1
      puts "#{input_number.capitalize} bottle of beer," if @beers == 1
      puts "Take one down, pass it around,"
      @beers -= 1
      input_number = number(@beers)
      puts "#{input_number.capitalize} bottles of beer on the wall." if @beers !=1
      puts "#{input_number.capitalize} bottle of beer on the wall." if @beers ==1
      
        
    end
  end
  
end

yay = BeerSong.new 99
yay.print_song




