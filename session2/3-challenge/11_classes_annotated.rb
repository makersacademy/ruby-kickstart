class BeerSong

  attr_accessor :num_of_beers
  # Creats set & get methods for num_of_beers

  def initialize(num_of_beers)
  # Creates new BeerSong with a preset number of beers,
  # e.g.
  # => song1 = BeerSong.new 99
  # => sets up the BeerSong object with 99 bottles of beer.

    num_of_beers = 0 if num_of_beers < 0
    num_of_beers = 99 if num_of_beers > 99
    @num_of_beers = num_of_beers
  # Lines 12 & 13 deal with the challenge requirements, i.e.
  # if number of beers is less than 0, set number of beers to 0
  # and if number of beers more than 0, set number of beers to
  # 99
  end

   def wordify(num_of_beers, word=" bottle")
  # Creates new method with two arguments.  The first is the
  # number of beers; the second is preset to " bottle".
  # This method does two things:

    num_of_beers == 1 ? ending = word + "" : ending = word + "s"
  # The above creates a new variable, 'ending', which is either
  # " bottle" (in the case where the number of beers is 1) or
  # " bottles" in every other case.

  # The below is used to turn the integer value of the number
  # of beers into a word string, e.g. 99 => "ninety-nine"
    split_num = num_of_beers.to_s.chars.map(&:to_i)
  # Takes number of beers, converts to string, then maps each
  # individual character to a string and converts that
  # character back to an integer. E.g.
  # => 99 => "99" =>["9", "9"] => [9, 9]
  # The resulting array is then assigned to the split_num variable.

    teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    ones= ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'zero']
  # The above create arrays of the relevant number words we will
  # need to access to represent each integer in word form.
    if num_of_beers < 10
      return one_to_nine[num_of_beers-1] + ending
  # If number of beers < 10 then:
  # => num_of_beers = 9
  # => return ones[9-1] + " bottle" + "s"
  # => return ones[8] + " bottles"
  # => return "nine bottles"
    elsif num_of_beers > 10 && num_of_beers < 20
      return teens[num_of_beers-11] + ending
  # Elsif number of beers > 10 and number of beers < 20 then:
  # => num_of_beers = 11
  # => return teens[11-11] + "bottle" + "s"
  # => return teens[0] + " bottles"
  # => return "ten bottles"
    else
  # In all other circumstances do this (i.e. number of beers > 20)
      return tens[split_num[0]-1] + ending if split_num[1] == 0
  # This only returns a value where the number of beers has only
  # tens and no ones, e.g.
  # => num_of_beers = 20
  # => return tens[split_num[0]-1] + " bottles" if split_num[1] == 0
  # => return tens[2-1] + " bottles" if 0 == 0
  # => return tens[1] + " bottles"
  # NOTE: [split_num[0]-1] is basically saying retrive index[0] from
  # the array that split_num creates when you plugin 21, i.e. [2, 1],
  # so split_num[0] retrieves the value 2 from the array. 2-1 = 1,
  # which when plugged into the tens array retrives index[1] from that
  # array, which is "twenty".  This is how we arrive at "twenty".

      return tens[split_num[0]-1] + "-" + ones[split_num[1]-1] + ending
  # This return will only kick in if the above one does not.  This return
  # returns applies where the number of beers has tens and ones, e.g.
  # => num_of_beers = 21
  # => return tens[split_num[0]-1] + "-" + one[split_num[1]-1] + " bottles"
  # => return tens[2-1] + "-" + one[1-1] + " bottles"
  # => return "twenty" + "-" + one[0] + " bottles"
  # => return "twenty" + "-" + "one" + " bottles"
  # => return "twenty-one bottles"
  # NOTE: [split_num[0]-1] is basically saying retrive index[0] from
  # the array that split_num creates when you plugin 21, i.e. [2, 1],
  # so split_num[0] retrieves the value 2 from the array. 2-1 = 1,
  # which when plugged into the tens array retrives index[1] from that
  # array, which is "twenty".  This is how we arrive at "twenty".
    end
  end

  def print_song
  # Creates new method that prints the final song
    while @num_of_beers > 0
  # While number of beers is > 0 do the following.  In other words,
  # the song keeps repeating in the below stanza until the song
  # gets to the point where all bottles of beer have been taken down
  # from the wall.
      puts wordify(@num_of_beers).capitalize + " of beer on the wall,"
  # Puts the output of wordify on the current number of beers, capitalizs
  # it and adds it to the string " of beer on the wall"
      puts wordify(@num_of_beers).capitalize + " of beer,"
  # Same as above, except adds different string to the end.
      puts "Take one down, pass it around,"
      @num_of_beers -= 1
  # Now a beer has been taken down from the wall (in the lyrics) of
  # the stanza at least, the number of beers variable is reduced by 1,
  # e.g. if the starting number was 99, it updates to 98 after this
  # step.
      puts wordify(@num_of_beers).capitalize + " of beer on the wall."
  # Simply puts the new number of beers (98 if we use the above example)
  # and adds the string to the end
    end
  end
end