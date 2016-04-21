# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(array)
  return_array = []
  power_nr = 0
  array = array.sort

  array.each_with_index { | nr, index |
    #sqrt_nr = Math.sqrt(nr)
    power_nr = nr ** 2 #16
    current_nr = nr #4

    array.each_with_index { | nr, index |
      if Math.sqrt(nr) == current_nr
        return_array.push(current_nr)
        break
      end
    }
      # array = array.shift if array.length != 1
  }

  return_array
end



# def get_squares(numbers)
#   numbers.select { |n| numbers.include? n*n }.sort
# end




# loop_nr = array.length
#
# array.each { | nr |
#   sqrt_nr = Math.sqrt(nr)
#   while loop_nr !=0
#   array.each_with_index { | number, index | return_array.push(number) if sqrt_nr == number}
#   end
# array.pop[]
# loop_nr +=1
# }










#https://www.codecademy.com/articles/glossary-ruby


#
# 1 få in arrayen
# 2 få ut alla rötter ur alla nummer i arrayen
# 3. jämföra första arrayen om varje numemr^2 == any of numrena i den andra arrayen
#4. ta bort duplicates
# 4. spara ner dem som är true i en ny array och returnera den
#
#
# Math.sqrt(expression)
# Example
#
# Math.sqrt(100)
# => 10.0
#
# Math.sqrt(5+4)
# => 3.0
#
# Math.sqrt(Math.sqrt(122+22) + Math.sqrt(16))
# => 4.0
