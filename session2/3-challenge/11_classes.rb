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

	attr_accessor 'bottles'

	def initialize (bottles)
		if bottles > 99
			@bottles = 99
		elsif bottles < 0
			@bottles = 0
		else
			@bottles = bottles
		end
		english_number @bottles
	end

	def english_number number 
		  
		if number == 0
		  	return "zero"
		  end
		  
		  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
		  tens_place = ["ten", "twenty", "thirty", "fory", "fifty", "sixty", "seventy", "eighty", "ninety"]
		  teens_place = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
		  other_place = ["hundred", "thousand", "million", "billion", "trillion", "quadrillion", "sextillion" "septillion", "octillion", "nonillion", "decillion", "undecillion", "duodecillion", "tredecillion", "quattuordecillion", "quindecillion"]

		  num_string = ""
		  num_array = []
		  t = number.to_s.length # 6792001 = 7
		  
		  left = number #6792001
		  while t > 0 #7
		    wright = left / 10**(t-1) # 6 792 001/1 000 000 = 6
		    left = left - wright*10**(t-1) # 6 792 001 - 1 000 000 = 792 001
		    num_array = num_array << wright #  
		    t = t-1
		  end
		 
		  num_arr_rev = num_array.reverse

		  num_arr_rev.each_with_index { |value , index| # [6,7,9,2,0,0,1]   
		    if num_arr_rev == [0,1]
		        num_string = num_string.insert(t, "ten") 
		        break       
		    end 
		    if index % 3 == 0 && value > 0 && index != 0                       
		        num_string = num_string.insert(t, ones_place[value-1] + " " + other_place[index/3] + " " )        # "thousand" "two"              # "million" "six"
		    elsif index % 3 == 0 && value > 0 && index == 0  
		        num_string = num_string.insert(t, ones_place[value-1])
		    elsif index % 3 == 1 && value > 0
		        if value == 1 && num_arr_rev[index-1] == 0
		        elsif value == 1 
		          num_string = num_string.delete(ones_place[num_arr_rev[index-1]-1])
		          num_string = num_string.insert(t, teens_place[num_arr_rev[index-1]-1])
		        elsif
		          if num_array[index+1] == 0
		            num_string = num_string.insert(t, tens_place[value-1] + "-")  
		          else
		            num_string = num_string.insert(t, tens_place[value-1] + "-" ) 
		          end
		        end
		    elsif index % 3 == 2 && value > 0
		        num_string = num_string.insert(t, ones_place[value-1] + " " + other_place[0] + " " )              # "hundred" "seven"
		    end
		    } 

	  num_string  = num_string.rstrip
	  @num = num_string 
	  print_song                                                 
	end

	def second
		@num2 = english_number @bottles-1
	end

	def print_song 
		if @bottles > 1
			second
			num2 = @bottles-1
			p "#{@num} bottles of beer on the wall, #{@num} bottles of beer, Take one down, pass it around, #{@num2} bottles of beer on the wall."
		else @bottles == 1
			p "One bottle of beer on the wall, One bottle of beer, Take one down, pass it around, Zero bottles of beer on the wall."
		end
		@bottles -= 1
		english_number @bottles
	end

end



p BeerSong.new 25