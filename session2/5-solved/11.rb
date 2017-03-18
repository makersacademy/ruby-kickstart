class BeerSong
  attr_accessor :beers

  def initialize(beers)
    if beers > 99
      @beers = 99
    elsif beers < 0
      @beers = 0
    else
      @beers = beers
    end
  end

  def print_song
    @beers.downto 1 do |n|
      print_verse n
    end
  end

  def print_verse(n)
    if n == 0
      return
    else
      puts "#{translate(n)} #{bottle(n)} of beer on the wall,"
      puts "#{translate(n)} #{bottle(n)} of beer,"
      puts "Take one down, pass it around,"
      puts "#{translate(n - 1)} #{bottle(n - 1)} of beer on the wall."
    end
  end

  def bottle(n)
    n == 1 ? "bottle" : "bottles"
  end

  # shamelessly stolen from the solution  
  def translate(n)
    if 0 <= n && n <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else
      "#{translate n/10*10}-#{translate n%10}".downcase
    end.capitalize
  end
    
end