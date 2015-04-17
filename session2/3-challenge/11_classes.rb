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
  attr_accessor 'number'
  def initialize(number)
    number = 99 if number > 99
    number = 0 if number < 0
    @number = number
  end

  def print_song
    while number > 0
      numstring = number_text(number)
      s1 = ""; s1 = "s" if number != 1
      number -= 1
      numstringless1 = number_text(number)
      s2 = ""; s2 = "s" if number != 1

      puts """
        #{numstring} bottle#{s1} of beer on the wall,
        #{numstring} bottle#{s1} of beer,
        Take one down, pass it around,
        #{numstringless1} bottle#{s2} of beer on the wall.
      """
    end
  end

  def number_text(number)
    if number >= 10
      numarr = number.to_s.split(//)
      tens = numarr[0]
      units = numarr[1]
    
      tens_replacements = [["9", "ninety"], ["8", "eighty"], ["7", "seventy"], ["6", "sixty"], ["5", "fifty"], ["4", "forty"], ["3", "thirty"], ["2", "twenty"], ["1", "ten"]]
	  tens_replacements.each {|replacement| tens.gsub!(replacement[0], replacement[1])}
    else
      tens = ""
      units = number.to_s
    end
    units_replacements = [["9", "nine"], ["8", "eight"], ["7", "seven"], ["6", "six"], ["5", "five"], ["4", "four"], ["3", "three"], ["2", "two"], ["1", "one"], ["0", ""]]
    units_replacements.each {|replacement| units.gsub!(replacement[0], replacement[1])}
  
    hyphen = ""; hyphen = "-" if tens != "" && units != ""
    numstring = tens + hyphen + units
    numstring = "zero" if numstring == ""

    teens_replacements = [["ten-nine", "nineteen"], ["ten-eight", "eighteen"], ["ten-seven", "seventeen"], ["ten-six", "sixteen"], ["ten-five", "fifteen"], ["ten-four", "fourteen"], ["ten-three", "thirteen"], ["ten-two", "twelve"], ["ten-one", "eleven"]]
    teens_replacements.each {|replacement| numstring.gsub!(replacement[0], replacement[1])}
  
    numstring.capitalize
  end
end

BeerSong.new 4