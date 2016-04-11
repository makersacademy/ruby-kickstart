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
  attr_accessor :bottles

  def initialize(bottles)
    if bottles < 0
      @bottles = 0
    elsif bottles > 99
      @bottles = 99
    else
      @bottles = bottles
    end
  end

  def print_song
    nb_english = to_english(@bottles)
    count = @bottles
    count.times do
      puts "#{nb_english} bottle#{@bottles==1 ? "":"s"} of beer on the wall,\n" \
           "#{nb_english} bottle#{@bottles==1 ? "":"s"} of beer,\n" \
           "Take one down, pass it around,\n" \
           "#{to_english(@bottles-1)} bottle#{@bottles==2 ? "":"s"} of beer on the wall."
      @bottles -= 1
      nb_english = to_english(@bottles)
    end
  end

  def to_english(number)
    list_numbers = %w(Zero One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve Thirteen Fourteen Fifteen Sixteen Seventeen Eighteen Nineteen Twenty Twenty-one Twenty-two Twenty-three Twenty-four Twenty-five Twenty-six Twenty-seven Twenty-eight Twenty-nine Thirty Thirty-one Thirty-two Thirty-three Thirty-four Thirty-five Thirty-six Thirty-seven Thirty-eight Thirty-nine Forty Forty-one Forty-two Forty-three Forty-four Forty-five Forty-six Forty-seven Forty-eight Forty-nine Fifty Fifty-one Fifty-two Fifty-three Fifty-four Fifty-five Fifty-six Fifty-seven Fifty-eight Fifty-nine Sixty Sixty-one Sixty-two Sixty-three Sixty-four Sixty-five Sixty-six Sixty-seven Sixty-eight Sixty-nine Seventy Seventy-one Seventy-two Seventy-three Seventy-four Seventy-five Seventy-six Seventy-seven Seventy-eight Seventy-nine Eighty Eighty-one Eighty-two Eighty-three Eighty-four Eighty-five Eighty-six Eighty-seven Eighty-eight Eighty-nine Ninety Ninety-one Ninety-two Ninety-three Ninety-four Ninety-five Ninety-six Ninety-seven Ninety-eight Ninety-nine)
      list_numbers[number]
  end
end

beers = BeerSong.new(3)
#puts(beers.to_english(3))
beers.print_song