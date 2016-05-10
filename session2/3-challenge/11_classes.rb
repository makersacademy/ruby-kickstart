 class BeerSong
  
  attr_accessor :num_bottles

  def initialize(num_bottles)
    num_bottles = 0 if num_bottles < 0
    num_bottles = 99 if num_bottles > 99
    @num_bottles = num_bottles
  end
    
  def num2words(num_bottles)

      set1 = {0 => "", 1 => "One", 2 => "Two", 3 => "Three", 4 => "Four", 5 => "Five", 6 => "Six", 7 => "Seven", 8 => "Eight", 9 => "Nine"}

      set2 = {10 => "Ten", 11 => "Eleven", 12 => "Twelve", 13 => "Thirteen",
         14 => "Fourteen", 15 => "Fifteen", 16=>"Sixteen", 17=>"Seventeen", 18=>"Eighteen",
         19 =>"Nineteen"}

      set3 = {2 => "Twenty", 3=> "Thirty", 4=>"Forty", 5=>"Fifty", 6=>"Sixty",
         7 =>"Seventy", 8=> "Eighty", 9=> "Ninety"}

        if @num_bottles == 0
          "Zero"
        elsif @num_bottles.between?(1, 9)
          set1[@num_bottles]
        elsif @num_bottles.between?(10, 19)
          set2[@num_bottles]
        else 
          firstdig = @num_bottles.to_s.split("").first.to_i
          seconddig = @num_bottles.to_s.split("").last.to_i
          if @num_bottles % 10 == 0
            set3[firstdig].to_s
          else
          set3[firstdig].to_s + "-" + set1[seconddig].to_s.downcase
          end
        end
    end

  def print_song
    if @num_bottles > 1
      (@num_bottles - 1).times do 
        puts "#{num2words @numbottles} bottles of beer on the wall,"       ,
        "#{num2words @numbottles} bottles of beer,"           ,
        "Take one down, pass it around,"         ,
        "#{num2words (@num_bottles -= 1)} #{@num_bottles == 1 ? "bottle" : "bottles"} of beer on the wall."
      end
      puts "One bottle of beer on the wall,"        ,
           "One bottle of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "Zero bottles of beer on the wall."
    elsif @num_bottles == 1
      puts "One bottle of beer on the wall,"        ,
           "One bottle of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "Zero bottles of beer on the wall."
     else
      puts ""
      
    end
  end

end