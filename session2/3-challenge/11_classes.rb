class BeerSong  

attr_accessor :bottles # I need to check what does it do exactly

  def initialize (bottles)  #Initialize method is called automaticaly when new.Class(). Basic method to have the Class working
  bottles = 0 if bottles < 0
  bottles = 99 if bottles > 99
  @bottles = bottles #what is this? => self.bottles = bottles
  end


  def convert(number)    #we need to convert number to english language output
    number_words = {
      90 => "ninety",   80 => "eighty",   70 => "seventy",
      60 => "sixty",    50 => "fifty",    40 => "forty",
      30 => "thirty",   20 => "twenty",   19 => "nineteen",
      18 => "eighteen", 17 => "seventeen",16 => "sixteen",
      15 => "fifteen",  14 => "fourteen", 13 => "thirteen",
      12 => "twelve",   11 => "eleven",   10 => "ten",
      9  => "nine",     8  => "eight",    7  => "seven",
      6  => "six",      5  => "five",     4  => "four",
      3  => "three",    2  => "two",      1  => "one",
                                          0 => "zero"
      }    
    
    if number_words.has_key?(number)# returns from hash  unique numbers
      number_words[number] # gives us the value associated to a hash key
    
    else# for two digit numbers not already in hash
      [number_words[number - (number % 10)], number_words[number % 10] ].join("-") 
      #hash[number - remainder] = hash value    #hash[remainder] = hash value
      #we can create an array with this both values and then use join method on the array
    end
  end

  def non_plural(number) # We need this in orther to avoid the plural when there is 1 bottle.
       number == 1 ? "bottle" : "bottles"
  end


  def print_song
    if @bottles == 0 #Since Josh said it has to be a new string (not explained on the above instruction, though, see Rspec)
      String.new
    else
     @bottles.downto(1) do |i| #using conver for every i in @bottles and non_plural we can create the song.
          puts "#{convert(i)} #{non_plural(i)} of beer on the wall,".capitalize
          puts "#{convert(i)} #{non_plural(i)} of beer,".capitalize
          puts "Take one down, pass it around,".capitalize
          puts "#{convert(i-1)} #{non_plural(i-1)} of beer on the wall.".capitalize
      end
        end
      
end
end
    
beers = BeerSong.new(3)
beers.print_song