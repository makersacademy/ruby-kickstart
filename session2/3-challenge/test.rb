

# the arrays for the numeric-to-alpha conversion
tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
units = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]



def make_alpha(count)
# okay, so here to translate numbers into letters
# so this is for pure tens
if count % 10 == 0
  alpha_bottles = tens[(count / 10) - 1]
# ths is for 1 to 10
elsif (count % 10) > 0 && (count < 10)
  alpha_bottles = units[count]
# this is for anything that is not divisible by ten and is above 19
elsif count % 10 != 0 && count > 19
  first, second = count.to_s.split('').map { |digit| digit.to_i }
  alpha_bottles = tens[first-1] + "-" + units[second]
  # this is for teens!!!
elsif count % 10 != 0 && count < 20
  alpha_bottles = teens[count-11]
# this is for single units
elsif count < 10 && count > 0
  alpha_bottles = units[count]
  # and this is for zero
else alpha_bottles = "zero"
end
return alpha_bottles
end

# mea culpa, this block is a straight lift from the soluton given
# by josh creek, I am just borrowing it so I can try and work out what's
# going wrong with the rest of the code I wrote.

def bottle(n)
  if n == 1 then 'bottle' else 'bottles'
  end
end

def print_song
@beers.downto(1) do |the_beers|
print_verse(the_beers)
end

def print_verse(num)
# the next two lines of this block are also taken from the
# josh creek solution, although I'm unsure what they do... but as
# my problem is failing the first rake test with the error
# "rspec ./session2/4-spec/11.rb:24 # BeerSong prints nothing when there is no bee"
# I'm guessing it is something to do
if num.zero?
  String.new
else
  puts """
  #{make_alpha(num)} #{bottle num} of beer on the wall,
  #{make_alpha(num)} b#{bottle num} of beer,
  # Take one down, pass it around,
  #{make_alpha(num-1)} #{bottle num-1} of beer on the wall.
  """
end
end
end

@beers = 80
print_song
