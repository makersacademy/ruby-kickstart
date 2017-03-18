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
  def initialize(number_of_bottles_of_beer)
    @number_of_bottles_of_beer = number_of_bottles_of_beer
    if number_of_bottles_of_beer < 0
      @number_of_bottles_of_beer = 0
    elsif number_of_bottles_of_beer > 99
      @number_of_bottles_of_beer = 99
    end
  end

  def print_song
    lyrics_pl = " bottles of beer on the wall,"
    lyrics_sg = " bottle of beer on the wall,"
    lyrics_cm = "Take one down, pass it around,"
    lyrics1 = english_number(@number_of_bottles_of_beer).capitalize
    lyrics2 = english_number(@number_of_bottles_of_beer-1).capitalize
    while @number_of_bottles_of_beer > 0
      if @number_of_bottles_of_beer == 1
        puts english_number(@number_of_bottles_of_beer).capitalize + lyrics_sg
        puts english_number(@number_of_bottles_of_beer).capitalize + lyrics_sg[0..14] + ','
        puts lyrics_cm
        puts english_number(@number_of_bottles_of_beer-1).capitalize + lyrics_pl.sub(/,/, '.')
      else
        puts english_number(@number_of_bottles_of_beer).capitalize + lyrics_pl
        puts english_number(@number_of_bottles_of_beer).capitalize + lyrics_pl[0..15] + ','
        puts lyrics_cm
        if @number_of_bottles_of_beer > 2
          puts english_number(@number_of_bottles_of_beer-1).capitalize + lyrics_pl.sub(/,/, '.')
        elsif @number_of_bottles_of_beer == 2
          puts english_number(@number_of_bottles_of_beer-1).capitalize + lyrics_sg.sub(/,/, '.')
        end
      end
      @number_of_bottles_of_beer -= 1
    end
  end

  def english_number(number)
    tens_place = %w[ten twenty thirty forty fifty sixty seventy eighty ninety]
    teenagers = %w[eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
    ones_place = %w[one two three four five six seven eight nine ten]
    num_string = ''

    left = number
    write = left / 10
    left = left - (write * 10)

    if write > 0
      if write == 1 && left > 0
        num_string += teenagers[left-1]
        left = 0
      else
        num_string += tens_place[write-1]
        if left > 0
          num_string += '-'
        end
      end
    else
      if left <= 0
        num_string = 'zero'
      end
    end

    write = left

    if write > 0
      num_string += ones_place[write-1]
    end
    num_string
  end
end
