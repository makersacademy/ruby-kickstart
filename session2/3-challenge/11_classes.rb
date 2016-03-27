
class BeerSong
  attr_accessor :bottles

  def initialize (bottles)
    bottles = 0 if bottles < 0
    bottles = 99 if bottles > 99
    @bottles = bottles
  end

  def num_words(bottles)

  tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen","eighteen","nineteen"]
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

  words = ''

  tens_place = bottles / 10
  ones_place = bottles % 10

  if tens_place > 0
    if tens_place == 1 && ones_place > 0
      words = "#{teens[ones_place-1]}"
    elsif ones_place == 0
      words = "#{tens[tens_place-1]}"
    elsif tens_place > 1
      words = "#{tens[tens_place-1]}-#{ones[ones_place-1]}"
    end
  end

  if tens_place == 0
      words = "#{ones[ones_place-1]}"
    end
    words
end

  def print_song

    while bottles > 1
     puts "#{num_words(bottles).capitalize} bottles of beer on the wall,"
     puts "#{num_words(bottles).capitalize} bottles of beer,"
     puts "Take one down, pass it around,"
     puts "#{num_words(bottles-1).capitalize} #{bottles-1 == 1 ? "bottle" : "bottles"} of beer on the wall."
     @bottles -= 1
    end

    if bottles == 1
     puts "One bottle of beer on the wall,"
     puts "One bottle of beer,"
     puts "Take one down, pass it around,"
     puts "Zero bottles of beer on the wall."
    end
  end
end

BeerSong.new(99).print_song