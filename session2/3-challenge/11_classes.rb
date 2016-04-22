#Sorry, I spent a few hours on this (oops, not 30 minutes as recommended) and could only get this far. The basic song works but I couldn't translate the song from numeric form to "words"!!

class BeerSong
  attr_accessor :beer_start

def initialize(beer_start)
  @beer_start = beer_start
    if beer_start < 0
      beer_start = 0
      puts "There are no beer bottles to fall."
    elsif beer_start > 5
      beer_start = 5
    else beer_start = beer_start
    end

def print_song
  until beer_start == 0
  puts "  #{beer_start} bottles of beer on the wall, #{beer_start} bottles of beer
  and if one of those bottles should happen to fall,
  there will be.......
  #{beer_start -= 1} bottles of beer on the wall.
  "
  puts "      All the bottles have fallen!"
  end


