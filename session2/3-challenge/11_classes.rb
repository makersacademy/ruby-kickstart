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
  def initialize(num_beers)
    if num_beers < 0
      @num_beers = 0
    elsif num_beers > 99
      @num_beers = 99
    else
      @num_beers = num_beers
    end  
  end

  def print_song
    while @num_beers > 0 && @num_beers != ''
      puts "#{number_to_english.capitalize} #{@num_beers == 1 ? "bottle" : "bottles"} of beer on the wall,"
      puts "#{number_to_english.capitalize} #{@num_beers == 1 ? "bottle" : "bottles"} of beer,"
      @num_beers -= 1
      puts "Take one down, pass it around,"
      puts "#{number_to_english.capitalize} #{@num_beers == 1 ? "bottle" : "bottles"} of beer on the wall."
    end
  end

  def number_to_english
    num_string = ''

    left = @num_beers
    
    write = left/10
    left = left - write * 10
    if write > 0
      if write == 1
        if left == 0
          num_string += "ten"
        elsif left == 1
          num_string += "eleven"
        elsif left == 2
          num_string += "twelve"
        elsif left == 3
          num_string += "thirteen"
        elsif left == 4
          num_string += "fourteen"
        elsif left == 5
          num_string += "fifteen"
        elsif left == 6
          num_string += "sixteen"
        elsif left == 7
          num_string += "seventeen"
        elsif left == 8
          num_string += "eighteen"
        elsif left == 9
          num_string += "nineteen"
        end

        left = 0
      elsif write == 2
        num_string += "twenty"
      elsif write == 3
        num_string += "thirty"
      elsif write == 4
        num_string += "forty"
      elsif write == 5
        num_string += "fifty"
      elsif write == 6
        num_string += "sixty"
      elsif write == 7
        num_string += "seventy"
      elsif write == 8
        num_string += "eighty"
      elsif write == 9
        num_string += "ninety"
      end

      if left > 0
        num_string += '-'
      end
    end

    write = left
    left = 0

    if write > 0
      if write == 1
        num_string += 'one'
      elsif write == 2
        num_string += 'two'
      elsif write == 3
        num_string += 'three'
      elsif write == 4
        num_string += 'four'
      elsif write == 5
        num_string += 'five'
      elsif write == 6
        num_string += 'six'
      elsif write == 7
        num_string += 'seven'
      elsif write == 8
        num_string += 'eight'
      elsif write == 9
        num_string += 'nine'
      end
    end
      
    if num_string == ''
      return 'zero'
    end

    num_string    
  end
end